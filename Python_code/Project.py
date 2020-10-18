import csv
import sys
from dataclasses import dataclass
from pathlib import Path
import math
import networkx as nx
import matplotlib.pyplot as plt
import string
import matlab

OPSIZE = 16
BB_MAX_BYTE_SIZE = pow(2, 8)
BB_MAX_COMMAND_COUNTER = BB_MAX_BYTE_SIZE/16
CON_BRANCHES_LIST = ['ble', 'beq','bne','bpl','bmi','bcc','bcs','bgt','bge','blt','bhi','bls']

@dataclass
class Basic_block:
    num: int
    num_for_matlab:int
    startBy: string
    endBy: string
    start_row_counter: int
    start_row_op: int
    start_location: int
    end_row_counter: int
    end_row_op:int
    end_location: int
    num_of_asm_rows: int
    num_of_long_commands: int
    num_of_op_rows: int
    is_it_con_branch: bool
    next1: int
    next1_location: int
    next2: int
    next2_location: int
    next_for_matlab: int
    byteSize: int
    entrances: int

    def __init__(self):
        self.byteSize = 0
        self.num = 0
        self.num_for_matlab = 0
        self.next_for_matlab = 0
        self.startBy = ' '
        self.endBy = ' '
        self.start_row_counter = 0
        self.start_row_op = 0
        self.start_location = 0
        self.end_row_counter = 0
        self.end_row_op = 0
        self.end_location = 0
        self.num_of_asm_rows = 0
        self.num_of_long_commands = 0
        self.num_of_op_rows = 0
        self.is_it_con_branch = False
        self.next1 = 0
        self.next1_location = 0
        self.next2 = 0
        self.next2_location = 0
        self.entrances = 1


class Program:
    file_name: string
    file_size: int
    labels: {}
    branches: {}
    combin_dict: {}
    combin_dict_after_spliting: {}
    num_of_rows: int
    size_in_byts: int
    raw_data_dict: {}


# track from label to label
def collect_labels_data(filename):
    """ This func make a dict consisted from the labels data,\n
    return: [file_name, file_size, {'label': {'start':,'end':,'size':,'start_row_counter':,'num_of_rows':}},
    all_commands_counter]\n"""
    p = Program
    p.file_name = filename
    p.file_size = 0
    file_name = filename
    file_size = 0
    labels = {'empty': {'start': 1, 'start_row_counter': 1}}
    row_counter = 1
    size_counter = 0
    with open(file_name) as asmFile:
        flag = True
        temp_prev_label = 'empty'
        while flag:
            label_location = asmFile.tell()
            asmReader = asmFile.readline()  # reading new line
            label_location_after_read = asmFile.tell()
            row_counter += 1
            if ":" in asmReader:  # each label ends with ':'
                tempList = asmReader.split(":")  # cleaning the data
                if ".ident	\"GCC: (Ubuntu/Linaro 7.4.0-1ubuntu1~18.04.1) 7.4.0\"" in asmReader:  # Symbolize the eof
                    row_counter -= 1  # decrease the label counting
                    asmReader = asmFile.readline()  # reading the last line for getting the file size
                    file_size = asmFile.tell()
                    (labels[temp_prev_label])['size'] = label_location - (labels[temp_prev_label])['start']
                    (labels[temp_prev_label])['num_of_rows'] = row_counter - (labels[temp_prev_label])[
                        'start_row_counter']
                    all_commands_counter = row_counter
                    asmFile.seek(labels[list(labels)[1]]['start'])  # moving the reader to the start of the file
                    flag = False  # for ending the search for labels
                else:
                    row_counter -= 1  # decrease the label counting
                    labels[tempList[0]] = {'start': label_location_after_read}
                    (labels[tempList[0]])['end'] = asmFile.tell()
                    labels[tempList[0]]['start_row_counter'] = row_counter
                    (labels[temp_prev_label])['end'] = label_location
                    (labels[temp_prev_label])['num_of_rows'] = row_counter - (labels[temp_prev_label])[
                        'start_row_counter']
                    (labels[temp_prev_label])['size'] = label_location - (labels[temp_prev_label])['start']
                    temp_prev_label = tempList[0]
            elif '@' in asmReader or asmReader.startswith('\t.'):
                row_counter -= 1

    return list([file_name, file_size, labels, all_commands_counter])


# complex track from label to branch||from branch to label||from label to label||from branch to branch
# assuming al branches start with b
def collect_jump_data(lsd):  # lsd[file_name, file_size, labels]
    """
    this function find all the branches command if file_name \n
    :param lsd: [file_name, file_size, dict(labels), all_commands_counter]
    :return: [file_name, file_size, {'labels': dict(label),\n
              'branch':{b_ad:{command:,l_target:,command_in_label:,ad_target,'start_row_counter':,'num_of_rows': ]
              [file_name, file_size, info, all_commands_counter]
    :create: csv file with jumping data
    """
    file_name = lsd[0]
    file_size = lsd[1]
    all_commands_counter = lsd[3]
    labels = lsd[2]
    info = {'label': lsd[2]}
    jump_dict = {}
    row_counter = 1
    with open(file_name) as asmFile:
        asmReader = asmFile.readline()  # reading new line
        asmFile.seek(labels[list(labels)[1]]['start'])
        flag = True
        while flag:
            before_command_location = asmFile.tell()
            str_bcl = str(before_command_location)  # befor command location
            asmReader = asmFile.readline()
            row_counter += 1
            after_command_location = asmFile.tell()
            if ".ident	\"GCC: (Ubuntu/Linaro 7.4.0-1ubuntu1~18.04.1) 7.4.0\"" in asmReader:  # if true than end of file
                asmFile.seek(labels[list(labels)[1]]['start'])
                flag = False
            elif (asmReader.startswith('\tb')) and ('sub' not in asmReader) and ('printf' not in asmReader) and (
                    not (asmReader.startswith('.'))) and ('__stack_chk_fail' not in asmReader) and (
                    ':' not in asmReader):  # if true this is a branch command
                st = asmReader.replace('\n', '')
                st = st.split('\t')
                jump_dict[str_bcl] = {'command': st[1], 'l_target': st[2], 'start_row_counter': row_counter,
                                      'before_command_location': before_command_location,
                                      'after_command_location': after_command_location, 'full_command': st}
                #print(jump_dict[str_bcl]['full_command'])
                flag = False
                for x in labels:
                    if x != 'empty':
                        # find in which label the braches placed in
                        if (labels[x]['start'] < before_command_location) and \
                                (labels[x]['end'] > before_command_location):
                            jump_dict[str_bcl]['command_in_label'] = x
                            jump_dict[str_bcl]['command_in_label_location'] = labels[x]['start']
                        if x == st[2]:
                            jump_dict[str_bcl]['ad_target'] = labels[x]['start']
                            flag = True
                        elif not flag:  # if label doesent exist
                            jump_dict[str_bcl]['ad_target'] = st[2]
                            flag = True
            elif '@' in asmReader or ':' in asmReader or asmReader.startswith('\t.'):
                row_counter -= 1
    info['branch'] = jump_dict
    return [file_name, file_size, info, all_commands_counter]


def write_to_csv_file(*argv):
    """   **Statistics_csv_writer**\n
    *** Func get arguments for printing to the statistics csv file\n
    :param argv: [file_name, stuff to print...]
    :return: csv file
    """
    statistic_writer = open(argv[0], 'a')
    for word in argv[1:]:
        if '\n' in str(word):
            statistic_writer.write(str(word))
        else:
            statistic_writer.write(str(word) + ",")
    statistic_writer.close()


def write_to_file(*argv, separatore=','):
    """   **Write_to_text_file**\n
    *** Func get arguments for printing to the statistics csv file\n
    *** the format is to be decided,\n
    *** the idea is (bool:?make_new_file?, file_name,....stuff to print...)\n
    :param separatore: separatore
    :param argv: [file_name, stuff to print...]
    :return: txt file
    """

    statistic_writer = open(argv[0], 'a')
    for word in argv[1:]:
        if '\n' in str(word):
            statistic_writer.write(str(word))
        else:
            statistic_writer.write(str(word) + separatore)
    statistic_writer.close()


def analytic_part(*argv):
    list_of_files = []
    for file_name in argv[0]:  # for each argument do...
        list_of_data = collect_labels_data(file_name)
        # [file_name, file_size, {'label': {'start':,'end':,'size':,'start_row_counter':,'num_of_rows':}}]
        list_of_data = collect_jump_data(list_of_data)
        """
        list of data is:
        0 - file_name
        1 - file_size
        2 - {'label': {'start':,'end':,'size':,'counter':,'num_of_rows':}}
            {'branch': {"b_ad": {'command':,'l_target':,'command_in_label':,'ad_target':}}
            '' represent fixed names
            "" changes from variable to variable
        """
        list_of_data = print_flow_file(list_of_data)  # print flow file
        list_of_files.append(list_of_data)

        # control flow graph - CFG
        G_directed = make_CFG(list_of_data)  # making the CFG
        draw_graph(G_directed)  # drawing the CFG
        list_of_data[2]['CFG'] = G_directed
        #spliting the big bbs by the max size
        flow_file = file_name.split('.')[0]
        flow_file += '_flow.csv'
        list_of_data[2]['bb_flow'] = split_bb_to_min_size(G_directed, list_of_data, flow_file)
        print_bb_dict(list_of_data[2]['bb_flow'], flow_file)
        print_bb_dict_for_matlab(list_of_data[2]['bb_flow'],flow_file)
        #todo: move this print to before spliting and instead of printing updating

    write_to_csv_file('summery.csv', 'file_name', 'size in Kb', 'program size(Byte)', 'max_block_log','avg_block_log')
    for x in range(20):
        write_to_csv_file('summery.csv', '< size <= 2^' + str(x))
    write_to_csv_file('summery.csv', '\n')
    for l1 in list_of_files:
        size_list = l1[7]
        size_dict = {}
        for x in size_list:
            try:
                size_dict[str(x)] += 1
            except:
                size_dict[str(x)] = 1
        write_to_csv_file('summery.csv', l1[0], l1[1], OPSIZE * l1[3], l1[5], l1[6])
        #print('******** max ', max(size_dict.keys()))
        for x in range(20):
            try:
                write_to_csv_file('summery.csv', size_dict[str(x)])
            except:
                write_to_csv_file('summery.csv', 0)
        write_to_csv_file('summery.csv', '\n')
        l1.append(size_dict)
        #print(str(l1[7]))
        # size_dict = sorted(size_dict)
        #size_dict.items())
        #for x in sorted(size_dict):
            #print(size_dict[x])


# printing in degree, incoming degree


def make_CFG(list_of_data):
    """return: G_directed made from list_of_data[2]
    """
    G_directed = nx.DiGraph()
    #print(list_of_data[2]['flow'])
    for line in list_of_data[2]['flow']:
        line = list_of_data[2]['flow'][line]
        if line['start'] > 0:
            G_directed.add_node(line['num'])
            if is_a_con_branch(line['endBy']):  # explisit branches
                G_directed.add_edge(line['num'], line['num'] + 1, weight=1)
            G_directed.add_edge(line['num'], line['next'], weight=1)
    return G_directed


#       draw the graph      #
def draw_graph(G_directed):
    position = nx.circular_layout(G_directed)
    edge_labeld = nx.get_edge_attributes(G_directed, 'weight')
    nx.draw(G_directed, pos=position, node_color='r', edge_color='b', arrowstyle='-|>')
    nx.draw_networkx_labels(G_directed, pos=position, font_size=5)
    nx.draw_networkx_edge_labels(G_directed, pos=position, edge_labels=edge_labeld, font_size=5)
    plt.draw()
    plt.show()


def making_binary_and_assembly_files(*argv):
    """ This function get a combined binary and assembly file and convert it to two seperate files
    :return: 2 txt files binary and assembly
    """
    for file_name in argv[0]:
        #sha_opcode.txt''
        source_name = file_name.split('.')[0]+'_opcode.txt'
        with open(source_name) as asmFile:
            count_to_break = 0
            binary_file = source_name.split('_')[0]+'_binary.txt'
            assembly_file = source_name.split('_')[0]+'_assembly.txt'
            write_to_file(binary_file, 'title \n')
            write_to_file(assembly_file, ' asm,operator1,operator2\n')

            while True:
                if '00000000' in asmFile.readline().split(' ')[0]:
                    break
            while True:
                stringline = asmFile.readline()
                if len(stringline) == 0 or '.word' in stringline or 'nop' in stringline:
                    break
                tell = asmFile.tell()
                stringline.replace('\n', '')
                splited_string = stringline.split('\t')
                if len(splited_string) > 3:
                    if len(splited_string[1].rstrip(' '))>4:
                        opcode_splited = splited_string[1].rstrip(',').split(' ')
                        write_to_file('sha_binary.txt', opcode_splited[0],',\n', opcode_splited[1], ',\n')
                    else:
                        write_to_file(binary_file, splited_string[1].rstrip(' ').rstrip(','), ',\n')
                    write_to_file(assembly_file, splited_string[2].rstrip('\n') +'\t'+ splited_string[3].rstrip('\n') + ',\n')
                else:
                    continue


def need_to_be_splited(bb:Basic_block):
    if bb.byteSize > BB_MAX_BYTE_SIZE:
        return True
    else:
        return False


def optimizing_bb(asm_file_name:string, bb:Basic_block, num_to_split_to:int):
    list_of_sub_bb = []
    mean_command_for_bb = math.ceil(bb.num_of_op_rows/num_to_split_to)
    bb_num_of_op_rows = bb.num_of_op_rows
    prev_sub_bb = bb
    last_next_bb = bb.next1
    last_next_location = bb.next1_location
    last_endBy = bb.endBy
    bb.endBy = ''
    """print('first cell in bb:', bb.start_row_counter,'\t',bb.end_row_counter,'\t', bb.start_row_op,
          '\t', bb.end_row_op)"""
    [decrease, prev_sub_bb,end_with_w] = spliting_bb(asm_file_name,bb,mean_command_for_bb,False)
    prev_sub_bb:Basic_block
    list_of_sub_bb.append(prev_sub_bb)
    bb_num_of_op_rows -= decrease
    #print("bb.num, '\t:\t', num_to_split_to, '\t:\t', bb_num_of_op_rows, '\t:\t', mean_command_for_bb,\t:\t decrease")
    #print(bb.num, '\t:\t', num_to_split_to, '\t:\t', bb_num_of_op_rows, '\t:\t', mean_command_for_bb, '\t:\t', decrease)
    num_to_split_to -= 1
    while num_to_split_to > 1:

        current_bb = Basic_block()
        current_bb.num = prev_sub_bb.num + 0.1

        prev_sub_bb.next1_location=prev_sub_bb.end_location
        prev_sub_bb.next1  = current_bb.num

        current_bb.start_row_counter = prev_sub_bb.end_row_counter
        current_bb.start_row_op = prev_sub_bb.end_row_op
        current_bb.start_location = prev_sub_bb.end_location
        [decrease,prev_sub_bb,end_with_w] = spliting_bb(asm_file_name,current_bb,mean_command_for_bb,end_with_w)
        """
        counter1 = 0
        counter2 = 0
        with open(asm_file_name) as asmFile:
            asmFile.seek(current_bb.start_location)
            while (counter1 + counter2) < mean_command_for_bb:
                before_line_location = asmFile.tell()
                asmLine = asmFile.readline()  # reading new line
                counter1 += 1
                last_read_location = asmFile.tell()
                if '#' in asmLine:
                    counter2 += 1
            if counter1 + counter2 > mean_command_for_bb:
                counter2 -= 1
                prev_sub_bb.end_location = before_line_location
            else:
                prev_sub_bb.end_location = last_read_location
            asmFile.close()
        
        current_bb.end_row_counter = current_bb.start_row_counter + mean_command_for_bb
        current_bb.end_location = prev_sub_bb.end_location
        current_bb.num_of_asm_rows = mean_command_for_bb
        current_bb.num_of_op_rows = mean_command_for_bb
        current_bb.size = mean_command_for_bb
        current_bb.byteSize = mean_command_for_bb*OPSIZE
        list_of_sub_bb.append(current_bb)
        """
        #print(current_bb.num, '\t:\t', num_to_split_to, '\t:\t', bb_num_of_op_rows, '\t:\t', mean_command_for_bb, '\t:\t', decrease)

        num_to_split_to -= 1
        bb_num_of_op_rows -= decrease
        list_of_sub_bb.append(prev_sub_bb)
        #print(current_bb.num, '\t:\t',num_to_split_to,'\t:\t',bb_num_of_op_rows,'\t:\t',mean_command_for_bb, '\t:\t', decrease)

    current_bb = Basic_block()
    #print(prev_sub_bb.num)
    current_bb.num = prev_sub_bb.num + 0.10
    prev_sub_bb.next1_location = prev_sub_bb.end_location
    prev_sub_bb.next1 = current_bb.num
    current_bb.start_row_counter = prev_sub_bb.end_row_counter
    current_bb.start_row_op = prev_sub_bb.end_row_op
    current_bb.start_location = prev_sub_bb.end_location
    [x,end_bb,end_with_w] = spliting_bb(asm_file_name,current_bb,bb_num_of_op_rows,end_with_w)
    current_bb.next1 = last_next_bb
    current_bb.next1_location = last_next_location
    current_bb.endBy=last_endBy
    """
    current_bb2.end_row_counter = bb_end_row_backup
    current_bb2.end_location = prev_sub_bb.end_location
    current_bb2.num_of_asm_rows = bb_end_row_backup-current_bb2.start_row_counter
    current_bb2.num_of_op_rows = current_bb2.num_of_asm_rows
    current_bb2.size = current_bb2.num_of_asm_rows
    current_bb2.byteSize = current_bb2.num_of_asm_rows * OPSIZE
    """
    list_of_sub_bb.append(end_bb)
    #print(current_bb.num, '\t:\t', num_to_split_to, '\t:\t', bb_num_of_op_rows, '\t:\t', mean_command_for_bb, '\t:\t', x)
    return list_of_sub_bb


def spliting_bb(asm_file_name, bb:Basic_block, mean_command_for_bb,skip:bool):
    counter1 = 0
    counter2 = 0
    with open(asm_file_name) as asmFile:
        asmFile.seek(bb.start_location)
        while (counter1 + counter2) < mean_command_for_bb:
            before_line_location = asmFile.tell()
            asmLine = asmFile.readline()  # reading new line
            counter1 += 1
            last_read_location = asmFile.tell()
            if not skip:
                if '.w' in asmLine :
                    counter2 += 1
            else:
                skip = False
        if counter1 + counter2 > mean_command_for_bb:
            counter1 -= 1
            skip = True
            bb.end_location = before_line_location
        else:
            bb.end_location = last_read_location
        asmFile.close()
    bb.end_row_counter = counter1 + bb.start_row_counter
    bb.end_row_op = counter1 + counter2 + bb.start_row_op
    bb.num_of_asm_rows = counter1
    bb.num_of_op_rows = counter1 + counter2
    bb.byteSize = bb.num_of_op_rows * OPSIZE
    return [counter1+counter2,bb,skip]


def split_bb_to_min_size(CFG, list_of_data, flow_file, bb_max=BB_MAX_BYTE_SIZE):
    asm_file_name = flow_file.split('_')[0]+'_assembly.txt'#list_of_data[0]
    flow_data = covert_references(list_of_data[2]['bb_flow'],asm_file_name)
    #print_bb_dict(flow_data)
    flow_data: {'': Basic_block}
    keys = list(flow_data.keys())
    prev_bb: Basic_block
    counter = 1
    for key in keys:
        basic_block = flow_data[key]
        basic_block : Basic_block
        prev_bb = basic_block
        prev_bb.num_for_matlab = counter
        counter += 1
        if need_to_be_splited(basic_block):
            num_of_splites = math.ceil(basic_block.byteSize/BB_MAX_BYTE_SIZE);
            splited_bb_list = optimizing_bb(asm_file_name,basic_block,num_of_splites)
            flow_data[key] = splited_bb_list[0]
            for x in range(1, len(splited_bb_list)):
                splited_bb_list[x].num_for_matlab = counter
                counter += 1
                flow_data[splited_bb_list[x].num] = splited_bb_list[x]



    keys = list(flow_data.keys())
    next_for_matlab_dict = {}
    for key in keys:
        next_for_matlab_dict[flow_data[key].num] = flow_data[key].num_for_matlab
    for key in keys:
        bb:Basic_block
        bb=flow_data[key]
        next_block = bb.next1
        if next_block !='end':
            bb.next_for_matlab = next_for_matlab_dict[next_block]
        else:
            bb.next_for_matlab = 'end'
    for v in CFG:
        if v != 'end':
            for key in keys:
                if flow_data[key].num == int(v):
                    block = flow_data[key]
                    block : Basic_block
                    block.entrances = CFG.in_degree(v)
    return flow_data


def is_a_con_branch(str):
    #con_brances_arr = ['ble', 'beq','bne','bpl','bmi','bcc','bcs','bgt','bge','blt','bhi','bls']
    for b in CON_BRANCHES_LIST:
        if b in str:  # explisit branches
            return True
    return False


def is_a_branch(str: string):
    if 'b' in str:  # explisit branches
        return True
    else:
        return False


def num_of_long_commands(asm_name: string, start: int, end: int):
    """
    counting num_of_long_commands from start to end in asm_name:file
    return: num_of_long_commands
    """
    ans = bool
    current_reader_position = 0
    long_commands_counter = 0
    with open(asm_name) as asmFile:
        asmFile.seek(start)  # posate the reader on start
        asmReader = asmFile.readline()
        current_reader_position = asmFile.tell()  # updating the current_reader_position
        while current_reader_position <= end:
            if '.w' in asmReader:
                long_commands_counter += 1
            asmReader = asmFile.readline()
            current_reader_position = asmFile.tell()
    return long_commands_counter


def convert_dict_to_classes(dict, file_name):
    keys = dict.keys()
    bb_dict = {}
    prev_bb_end_row_op = 1
    for key in keys:
        bb_dict[key] = Basic_block()
        bb_dict[key].num = dict[key]['num']
        bb_dict[key].startBy = key
        bb_dict[key].start_row_counter = dict[key]['start']
        bb_dict[key].start_location = dict[key]['start_location']
        bb_dict[key].start_row_op = prev_bb_end_row_op
        bb_dict[key].endBy = dict[key]['endBy']
        bb_dict[key].end_row_counter = dict[key]['end']
        bb_dict[key].end_location = dict[key]['end_location']
        bb_dict[key].is_it_con_branch = is_a_con_branch(dict[key]['endBy'])
        # todo:adding logic for next1 and next2 if needed
        bb_dict[key].next1 = dict[key]['next']
        bb_dict[key].next1_location = dict[key]['next_location']
        bb_dict[key].num_of_asm_rows = dict[key]['num_of_rows']
        # todo: change the file name to become generic sending sha.s should send sha_assembly.txt
        bb_dict[key].num_of_long_commands = num_of_long_commands(file_name, bb_dict[key].start_location,
                                                                 bb_dict[key].end_location)
        bb_dict[key].num_of_op_rows= bb_dict[key].num_of_long_commands + bb_dict[key].num_of_asm_rows
        bb_dict[key].byteSize = bb_dict[key].num_of_op_rows * OPSIZE
        bb_dict[key].end_row_op = bb_dict[key].start_row_op + bb_dict[key].num_of_op_rows
        prev_bb_end_row_op = bb_dict[key].end_row_op
    #print_bb_dict(bb_dict)
    return bb_dict


def covert_references(bb_dict: dict, assembly_file: string):
    #assembly_file = 'sha_assembly.txt'
    jump_dict = {}
    keys = list(bb_dict.keys())
    with open(assembly_file) as asmFile:
        asmLine = asmFile.readline()
        prev_start_row_op = 1
        for key in keys:
            bb: Basic_block
            bb = bb_dict[key]
            bb.start_location= asmFile.tell()
            bb.start_row_op = prev_start_row_op
            jump_dict[bb.num] = bb.start_location
            counter = 0
            long_counter = 0
            while counter < bb.num_of_asm_rows:
                counter+=1
                asmLine = asmFile.readline()
                if '.w' in asmLine:
                    long_counter+=1
                bb.end_location = asmFile.tell()
            bb.num_of_long_commands = long_counter
            bb.num_of_op_rows = bb.num_of_asm_rows + bb.num_of_long_commands
            bb.byteSize = bb.num_of_op_rows*OPSIZE
            bb.end_row_op = bb.start_row_op + bb.num_of_op_rows
            prev_start_row_op = bb.end_row_op
    asmFile.close()
    for key in keys:
        bb: Basic_block
        bb = bb_dict[key]
        if bb.next1 != 'end':
            bb.next1_location = jump_dict[bb.next1]
    return bb_dict


def print_label_file(list_of_data):
    file_name = (list_of_data[0].split('.'))[0]
    file_name += '_label.csv'
    file_size = list_of_data[1]
    num_of_commands = list_of_data[3]
    # print label statistics file
    blocks_counter = 0
    blocks_sum = 0
    blocks_max = 0
    write_to_csv_file(file_name, 'name', 'start', 'end', 'size', 'log_2', 'start_row_counter', 'commands in block',
                         '\n')
    labels = list_of_data[2]['label']
    for x in labels:
        start = labels[x]['start']
        end = labels[x]['end']
        size = labels[x]['num_of_rows']
        start_row_counter = labels[x]['start_row_counter']
        commands_in_block = labels[x]['num_of_rows']
        if size > 0:
            write_to_csv_file(file_name, x, start, end, size, math.ceil(math.log(size, 2)), start_row_counter,
                              commands_in_block, '\n')
            blocks_sum += size
            blocks_counter += 1
            if size > blocks_max:
                blocks_max = size

    blocks_average = math.ceil(blocks_sum / blocks_counter)
    log_file_size = math.ceil(math.log(file_size, 2))
    log_avg_block = math.ceil(math.log(blocks_average, 2))
    log_max_block = math.ceil(math.log(blocks_max, 2))
    write_to_csv_file(file_name, 'file size:', file_size, '\nMax size:,', blocks_max, '\nAverage size:,',
                      blocks_average, '\ncommands in file:', num_of_commands, '\n')
    write_to_csv_file(file_name, 'log data:', '\n')
    write_to_csv_file(file_name, 'file size:', log_file_size, '\nMax size:,', log_max_block, '\nAverage size:,',
                      log_avg_block, '\n')


def print_branch_file(list_of_data):
    # printing branches statistics file
    file_name = (list_of_data[0].split('.'))[0]
    file_name += '_branch.csv'
    file_size = list_of_data[1]
    num_of_commands = list_of_data[3]
    labels = list_of_data[2]['label']
    blocks_counter = 0
    blocks_sum = 0
    blocks_max = 0
    start = 0
    write_to_csv_file(file_name, 'num', 'ended by', 'continue to', 'start', 'end', 'size', 'log_2',
                         'start_row_counter', 'commands in block', '\n')
    branch = list_of_data[2]['branch']
    for x in branch:
        end = branch[x]['start_row_counter']
        size = end - start
        blocks_sum += size
        blocks_counter += 1
        write_to_csv_file(file_name, blocks_counter, branch[x]['command'], branch[x]['l_target'],
                          start, end, size, math.ceil(math.log(size, 2)), branch[x]['start_row_counter'], size, '\n')
        start = end
        if size > blocks_max:
            blocks_max = size

    blocks_average = math.ceil(blocks_sum / blocks_counter)
    log_file_size = math.ceil(math.log(file_size, 2))
    log_avg_block = math.ceil(math.log(blocks_average, 2))
    log_max_block = math.ceil(math.log(blocks_max, 2))
    write_to_csv_file(file_name, 'file size:', file_size, '\nMax size:,', blocks_max, '\nAverage size:,',
                      blocks_average, '\n')
    write_to_csv_file(file_name, 'log data:', '\n')
    write_to_csv_file(file_name, 'file size:', log_file_size, '\nMax size:,', log_max_block, '\nAverage size:,',
                      log_avg_block, '\n')


def print_flow_file(list_of_data):
    # print combined file
    file_name = (list_of_data[0].split('.'))[0]
    file_name += '_flow.csv'
    branches = list_of_data[2]['branch']
    labels = list_of_data[2]['label']
    num_of_commands = list_of_data[3]
    file_size = list_of_data[1]
    blocks_counter = 0
    blocks_sum = 0
    blocks_max = 0
    start = 0
    l_key = list(labels.keys())
    b_key = list(branches.keys())
    combine_dict = {'start': {'start': 0}}
    list_of_data[2]['flow'] = combine_dict
    current_point = 1
    counter = 0
    i = 0
    j = 0
    prev_block = 'start'
    prev_start = 0
    size_list = list()
    while (i < len(l_key)) and (j < len(b_key)):
        if labels[l_key[i]]['start'] < int(b_key[j]):
            combine_dict[prev_block]['end'] = labels[l_key[i]]['start_row_counter']
            combine_dict[prev_block]['end_location'] = labels[l_key[i]]['start']
            combine_dict[prev_block]['endBy'] = l_key[i]
            combine_dict[prev_block]['next'] = l_key[i]
            combine_dict[prev_block]['next_location'] = labels[l_key[i]]['start']
            combine_dict[prev_block]['size'] = labels[l_key[i]]['start_row_counter'] - prev_start
            prev_start = labels[l_key[i]]['start_row_counter']
            if not (combine_dict[prev_block]['size'] == 0):
                counter += 1
            combine_dict[l_key[i]] = {'num': counter, 'start': labels[l_key[i]]['start_row_counter'],
                                      'start_location': labels[l_key[i]]['start']}
            prev_block = l_key[i]
            i += 1
        else:
            full_command = branches[b_key[j]]['command'] + '->' + branches[b_key[j]]['l_target']
            combine_dict[prev_block]['end'] = branches[b_key[j]]['start_row_counter']
            combine_dict[prev_block]['end_location'] = branches[b_key[j]]['after_command_location']
            combine_dict[prev_block]['endBy'] = full_command
            combine_dict[prev_block]['next'] = branches[b_key[j]]['l_target']
            try:
                combine_dict[prev_block]['next_location'] = labels[branches[b_key[j]]['l_target']]['start']
            except:
                combine_dict[prev_block]['next_location'] = 'end\error'
            combine_dict[prev_block]['size'] = branches[b_key[j]]['start_row_counter'] - prev_start
            prev_start = branches[b_key[j]]['start_row_counter']
            if not (combine_dict[prev_block]['size'] == 0):
                counter += 1
            combine_dict[full_command] = {'num': counter, 'start': branches[b_key[j]]['start_row_counter'],
                                          'start_location': branches[b_key[j]]['after_command_location']}
            prev_block = full_command
            j += 1

    while i < len(l_key):
        combine_dict[prev_block]['end'] = labels[l_key[i]]['start_row_counter']
        combine_dict[prev_block]['end_location'] = labels[l_key[i]]['start']
        combine_dict[prev_block]['endBy'] = l_key[i]
        combine_dict[prev_block]['next'] = l_key[i]
        combine_dict[prev_block]['next_location'] = labels[l_key[i]]['start']
        combine_dict[prev_block]['size'] = labels[l_key[i]]['start_row_counter'] - prev_start
        # adding section
        if not (combine_dict[prev_block]['size'] == 0):
            counter += 1
        prev_start = labels[l_key[i]]['start_row_counter']
        combine_dict[l_key[i]] = {'num': counter, 'start': prev_start, 'start_location': labels[l_key[i]]['start']}
        prev_block = l_key[i]
        i += 1

    while j < len(b_key):
        full_command = branches[b_key[j]]['command'] + '->' + branches[b_key[j]]['l_target']
        combine_dict[prev_block]['end'] = branches[b_key[j]]['start_row_counter']
        combine_dict[prev_block]['end_location'] = branches[b_key[j]]['after_command_location']
        combine_dict[prev_block]['endBy'] = full_command
        combine_dict[prev_block]['next'] = branches[b_key[j]]['l_target']
        try:
            combine_dict[prev_block]['next_location'] = labels[branches[b_key[j]]['l_target']]['start']
        except:
            combine_dict[prev_block]['next_location'] = 'end\error'
        combine_dict[prev_block]['size'] = branches[b_key[j]]['start_row_counter'] - prev_start
        # adding section
        prev_start = branches[b_key[j]]['start_row_counter']
        if not (combine_dict[prev_block]['size'] == 0):
            counter += 1
        combine_dict[full_command] = {'num': counter, 'start': branches[b_key[j]]['start_row_counter'],
                                      'start_location': branches[b_key[j]]['after_command_location']}
        prev_block = full_command
        j += 1
    combine_dict[prev_block]['end'] = num_of_commands
    combine_dict[prev_block]['size'] = num_of_commands - prev_start

    # cleaning the dic from size = 0
    j = 0
    del combine_dict['start']
    keys = list(combine_dict.keys())
    while j < len(keys):
        if combine_dict[keys[j]]['size'] == 0:
            del combine_dict[keys[j]]
        j += 1

    # clculating the avg size max size and logs
    blocks_counter = 0
    blocks_sum = 0
    blocks_max = 0
    write_to_csv_file(file_name, 'num,startBy,endBy,next,start,end,size,log_2', '\n')
    for x in combine_dict:
        combine_dict[x]['num_of_rows'] = combine_dict[x]['size']
        size = combine_dict[x]['size'] * OPSIZE
        if size <= 0:
            size = size * (-1)
            size += 1
        combine_dict[x]['size'] = size
        size_list.append(math.ceil(math.log(size, 2)))
        blocks_sum += size
        blocks_counter += 1
        if size > blocks_max:
            blocks_max = size
        if not (x == 'start'):
            try:
                combine_dict[x]['next'] = combine_dict[combine_dict[x]['next']]['num']
            except:
                combine_dict[x]['next'] = 'end'
            try:
                combine_dict[x]['endBy'] = combine_dict[x]['endBy']
            except:
                combine_dict[x]['endBy'] = 'eof'
            write_to_csv_file(file_name, combine_dict[x]['num'], x, combine_dict[x]['endBy'], combine_dict[x]['next']
                              , combine_dict[x]['start'], combine_dict[x]['end'], size,
                              math.ceil(math.log(size, 2)), '\n')
    blocks_average = math.ceil(blocks_sum / blocks_counter)
    size_of_commands = list_of_data[3] * OPSIZE
    log_file_size = size_of_commands
    log_avg_block = math.ceil(math.log(blocks_average, 2))
    log_max_block = math.ceil(math.log(blocks_max, 2))
    list_of_data[2]['bb_flow'] = convert_dict_to_classes(combine_dict,file_name.split('_')[0]+'.s')
    list_of_data.append(math.ceil(math.log(size_of_commands, 2)))
    list_of_data.append(log_max_block)
    list_of_data.append(log_avg_block)
    list_of_data.append(size_list)
    return list_of_data


def print_dict(dict):
    print(
        'dict[x].num,\t, dict[x].start, \t, dict[x].start_row_counter, \t, dict[x].end, \t, dict[x].end_by,\t, dict[x].next1')
    for x in dict:
        print(dict[x].num, '\t', dict[x].start, '\t', dict[x].start_row_counter, '\t', dict[x].end, '\t',
              dict[x].end_by, '\t', dict[x].next1)


def print_bb_dict(dict:{'':Basic_block}, file_name):
    file_name = file_name.split('.')[0].split('_')[0] + '_bb_flow.csv'
    write_to_csv_file(file_name, 'num,startBy,start_row,strart_row_op,start_location,endBy,end_row,end_row_op,end_location,'
                                            'have_con_branch?,next1,next1_location,num_of_asm_rows,long,rows_to_mul,size,enrances\n')
    keys = dict.keys()
    for x in keys:
        y = dict[x]
        y: Basic_block
        write_to_csv_file(file_name, y.num, y.startBy, y.start_row_counter, y.start_row_op, y.start_location, y.endBy,
                          y.end_row_counter, y.end_row_op, y.end_location, y.is_it_con_branch, y.next1,
                          y.next1_location, y.num_of_asm_rows, y.num_of_long_commands, y.num_of_op_rows, y.byteSize, y.entrances,'\n')


def print_bb_dict_for_matlab(dict:{'':Basic_block}, file_name:string):
    file_name = file_name.split('.')[0].split('_')[0] + '_bb_flow_for_matlab.csv'
    write_to_csv_file(file_name, 'num,startBy,endBy,next,start,end,size,entrances\n')

    keys = dict.keys()
    for x in keys:
        y = dict[x]
        y: Basic_block
        write_to_csv_file('sha_bb_flow_for_matlab.csv', y.num_for_matlab, y.startBy, y.endBy, y.next_for_matlab,
                          y.start_row_op, y.end_row_op, y.byteSize, y.entrances,'\n')


def main(*argv):  # *argv

    making_binary_and_assembly_files(*argv)
    analytic_part(*argv)
    print('\n****\nSuccefully ended:\t DONT WORRY BE HAPPY :-)\n*****')

#                   """******** Succesfully ended:	DONT WORRY BE HAPPY :-)********"""

# End of program

if __name__ == "__main__":
    main(sys.argv[1:])
