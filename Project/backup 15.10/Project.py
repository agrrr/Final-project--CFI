import csv
import sys
from dataclasses import dataclass
from pathlib import Path
import math
import networkx as nx
import matplotlib.pyplot as plt
# asemly = open('C:\\Users\\DELL\OneDrive\\avichaiAndBarak\\HarryPoter2.pdf', 'rb')
# Creating a pdf reader object
# pdfReader = PyPDF2.PdfFileReader(pdfFileObj)
# Getting number of pages in pdf file
# pages = pdfReader.numPages
import string

"""for prog_location in sys.arg[1:]: """

OPSIZE = 16
BB_MAX_BYTE_SIZE = pow(2, 8)
BB_MAX_COMMAND_COUNTER = BB_MAX_BYTE_SIZE/16
CON = ('ble' or 'beq')


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
    enterances: int

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
        self.enterances = 0


class Program:
    file_name: string
    file_size: int
    labels: {}
    branches: {}
    combin_dict: {}
    combin_dict_after_spliting: {}
    num_of_rows: int
    size_in_byts: int


# track from label to label
def collect_labels_data(filename):
    # (filename, file_address)
    """ this func make a dict consisted from the labels data,\n
    **** return [file_name, file_size, {'label': {'start':,'end':,'size':,'start_row_counter':,'num_of_rows':}},
    all_commands_counter]\n
    -TODO: try to initialize the dict without 'empty'"""
    p = Program
    p.file_name = filename
    p.file_size = 0
    file_name = filename
    file_size = 0
    # basic = Path(r+file_name)
    # basic = 'C:\Users\DELL\OneDrive - Bar-Ilan University\הרצאות וחומרי קורסים\Final Project\'
    # file_address = basic + file_name
    print(file_name)
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
                print(asmReader)
                tempList = asmReader.split(":")  # cleaning the data
                if ".ident	\"GCC: (Ubuntu/Linaro 7.4.0-1ubuntu1~18.04.1) 7.4.0\"" in asmReader:  # Symbolize the eof
                    row_counter -= 1  # decrease the label counting
                    asmReader = asmFile.readline()  # reading the last line for getting the file size
                    file_size = asmFile.tell()
                    (labels[temp_prev_label])['size'] = label_location - (labels[temp_prev_label])['start']
                    (labels[temp_prev_label])['num_of_rows'] = row_counter - (labels[temp_prev_label])[
                        'start_row_counter']
                    all_commands_counter = row_counter
                    # statistics_csv_write(file_name, file_size)

                    "The File Size is:"
                    # print("****************8*********\nFile size is\t:", file_size, all_commands_counter)
                    # print('the first label is:\t', list(labels)[1])
                    # (labels[tempList[0]])['end'] = asmFile.tell()
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
                    # print(labels[tempList[0]])
            elif '@' in asmReader or asmReader.startswith('\t.'):
                row_counter -= 1
        # print(labels)

    return list([file_name, file_size, labels, all_commands_counter])


# complex track from label to branch||from branch to label||from label to label||from branch to branch
# assuming al branches start with b
def collect_jump_data(lsd):  # lsd[file_name, file_size, labels]
    """
    this function find all the branches command if file_name
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
    labels_csv_write('\n', 'LineNum,inLabel,command,JumpToLabel,jumpToAd,start_row_counter', '\n')  # Head Title
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
                # print(asmReader)
                # print(before_command_location)
                st = st.split('\t')
                # print(st)
                jump_dict[str_bcl] = {'command': st[1], 'l_target': st[2], 'start_row_counter': row_counter,
                                      'before_command_location': before_command_location,
                                      'after_command_location': after_command_location, 'full_command': st}
                print(jump_dict[str_bcl]['full_command'])
                flag = False  ##*****************************************************************************
                for x in labels:
                    # print('x', x, 'st[2]', st[2])
                    if x != 'empty':
                        # find in which label the brach placed
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
            # labels_csv_write(before_command_location, jump_dict[str_bcl]['command_in_label'],
            #  st[1], st[2], (jump_dict[str_bcl]['ad_target'] or st[2]), row_counter, '\n')
            elif '@' in asmReader or ':' in asmReader or asmReader.startswith('\t.'):
                row_counter -= 1
    info['branch'] = jump_dict
    return [file_name, file_size, info, all_commands_counter]


def statistics_csv_write(*argv):
    """   **Statistics_csv_writer**\n
    *** Func get arguments for printing to the statistics csv file\n
    *** the format is to be decided,\n
    *** the idea is (bool:?make_new_file?, file_name,....stuff to print...)\n
    ***TODO: make the file name dependes

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
    ***TODO: make the file name dependes

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


def labels_csv_write(*argv):
    """ **label_csv_writer** \n
     **Get arguments to print and print them to file\n
     *** the idea is (bool:?make_new_file?, file_name,....stuff to print...)
     **TODO: make the file name dependes """
    writer = open('labelsMapping.csv', 'a')
    for word in argv:
        if '\n' in str(word):
            writer.write(str(word))
        else:
            writer.write(str(word) + ",")
    writer.close()


def make_labels_csv(lsd):  # lsd[file_name, file_size, labels]
    """
    :param lsd: [file_name, file_size, dict(labels)]
    :return: csv with the labels data
    """
    labels_csv_write('Label', 'StartPoint', 'EndPoint', 'Size', 'log_2', '\n')
    for d in lsd[2]:
        labels_csv_write(d, lsd[2][d]['start'], lsd[2][d]['end'], lsd[2][d]['size'],
                         math.ceil(math.log(lsd[2][d]['size'], 2)), '\n')  # lsd[2][d]['size'],
    labels_csv_write('end', 'end', 'end', 'end', '\n\n')
    # TODO: done


def print_label_file(list_of_data):
    file_name = (list_of_data[0].split('.'))[0]
    file_name += '_label.csv'
    file_size = list_of_data[1]
    num_of_commands = list_of_data[3]
    # print label statistics file
    blocks_counter = 0
    blocks_sum = 0
    blocks_max = 0
    statistics_csv_write(file_name, 'name', 'start', 'end', 'size', 'log_2', 'start_row_counter', 'commands in block',
                         '\n')
    labels = list_of_data[2]['label']
    for x in labels:
        start = labels[x]['start']
        end = labels[x]['end']
        size = labels[x]['num_of_rows']
        start_row_counter = labels[x]['start_row_counter']
        commands_in_block = labels[x]['num_of_rows']
        if size > 0:
            statistics_csv_write(file_name, x, start, end, size, math.ceil(math.log(size, 2)), start_row_counter,
                                 commands_in_block, '\n')
            blocks_sum += size
            blocks_counter += 1
            if size > blocks_max:
                blocks_max = size

    blocks_average = math.ceil(blocks_sum / blocks_counter)
    log_file_size = math.ceil(math.log(file_size, 2))
    log_avg_block = math.ceil(math.log(blocks_average, 2))
    log_max_block = math.ceil(math.log(blocks_max, 2))
    statistics_csv_write(file_name, 'file size:', file_size, '\nMax size:,', blocks_max, '\nAverage size:,',
                         blocks_average, '\ncommands in file:', num_of_commands, '\n')
    statistics_csv_write(file_name, 'log data:', '\n')
    statistics_csv_write(file_name, 'file size:', log_file_size, '\nMax size:,', log_max_block, '\nAverage size:,',
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
    statistics_csv_write(file_name, 'num', 'ended by', 'continue to', 'start', 'end', 'size', 'log_2',
                         'start_row_counter', 'commands in block', '\n')
    branch = list_of_data[2]['branch']
    for x in branch:
        end = branch[x]['start_row_counter']
        size = end - start
        blocks_sum += size
        blocks_counter += 1
        statistics_csv_write(file_name, blocks_counter, branch[x]['command'], branch[x]['l_target'],
                             start, end, size, math.ceil(math.log(size, 2)), branch[x]['start_row_counter'], size, '\n')
        start = end
        if size > blocks_max:
            blocks_max = size

    blocks_average = math.ceil(blocks_sum / blocks_counter)
    log_file_size = math.ceil(math.log(file_size, 2))
    log_avg_block = math.ceil(math.log(blocks_average, 2))
    log_max_block = math.ceil(math.log(blocks_max, 2))
    statistics_csv_write(file_name, 'file size:', file_size, '\nMax size:,', blocks_max, '\nAverage size:,',
                         blocks_average, '\n')
    statistics_csv_write(file_name, 'log data:', '\n')
    statistics_csv_write(file_name, 'file size:', log_file_size, '\nMax size:,', log_max_block, '\nAverage size:,',
                         log_avg_block, '\n')


def print_flow_file(list_of_data):
    # print combined file
    file_name = (list_of_data[0].split('.'))[0]
    file_name += '_flow.csv'
    branches = list_of_data[2]['branch']
    labels = list_of_data[2]['label']
    print('######$$$$$#$##$#$ PRINT_FLOW_FILE_FUNC: ##$$$$$$$$$$$$$$$$$')
    # print(branches, '\n')
    # print(labels, '\n')
    num_of_commands = list_of_data[3]
    file_size = list_of_data[1]
    blocks_counter = 0
    blocks_sum = 0
    blocks_max = 0
    start = 0
    # TODO: statistics csv, print Dugri file combining the label and branches save flow to object
    l_key = list(labels.keys())
    b_key = list(branches.keys())
    combine_dict = {'start': {'start': 0}}
    list_of_data[2]['flow'] = combine_dict
    current_point = 1
    counter = 0  # TODO: changed from 1 to 0 for making the file start at 1 and not 2
    i = 0
    j = 0
    prev_block = 'start'
    prev_start = 0
    size_list = list()
    # print(l_key[0])
    # print(b_key)
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
    # print(keys)
    while j < len(keys):
        if combine_dict[keys[j]]['size'] == 0:
            del combine_dict[keys[j]]
        j += 1

    # clculating the avg size max size and logs
    blocks_counter = 0
    blocks_sum = 0
    blocks_max = 0

    statistics_csv_write(file_name, 'num,startBy,endBy,next,start,end,size,log_2', '\n')
    for x in combine_dict:
        combine_dict[x]['num_of_rows'] = combine_dict[x]['size']
        size = combine_dict[x]['size'] * OPSIZE
        if size <= 0:
            size = size * (-1)
            size += 1
        combine_dict[x]['size'] = size
        print(size)
        size_list.append(math.ceil(math.log(size, 2)))
        blocks_sum += size
        blocks_counter += 1
        if size > blocks_max:
            blocks_max = size
        print(size)
        if not (x == 'start'):
            try:
                combine_dict[x]['next'] = combine_dict[combine_dict[x]['next']]['num']
            except:
                combine_dict[x]['next'] = 'end'
            try:
                combine_dict[x]['endBy'] = combine_dict[x]['endBy']
            except:
                combine_dict[x]['endBy'] = 'eof'
            statistics_csv_write(file_name, combine_dict[x]['num'], x, combine_dict[x]['endBy'], combine_dict[x]['next']
                                 , combine_dict[x]['start'], combine_dict[x]['end'], size,
                                 math.ceil(math.log(size, 2)), '\n')
    blocks_average = math.ceil(blocks_sum / blocks_counter)
    size_of_commands = list_of_data[3] * OPSIZE
    log_file_size = size_of_commands
    log_avg_block = math.ceil(math.log(blocks_average, 2))
    log_max_block = math.ceil(math.log(blocks_max, 2))
    # todo: call for converting func
    list_of_data[2]['bb_flow'] = convert_dict_to_classes(combine_dict)
    # print('*************************************************\n\n',combine_dict.keys(),'\n\n')
    # statistics_csv_write(file_name, 'file size:', file_size, '\nMax size:,', blocks_max, '\nAverage size:,',
    # blocks_average, '\nnum of commands *OPSIZE :,', size_of_commands, '\n')
    # statistics_csv_write(file_name, 'log data:', '\n')
    # statistics_csv_write(file_name, 'file size:', log_file_size, '\nMax size:,', log_max_block, '\nAverage size:,',
    # log_avg_block, '\nnum of commands * OPSIZE:,', math.ceil(math.log(size_of_commands, 2)), '\n')
    list_of_data.append(math.ceil(math.log(size_of_commands, 2)))
    list_of_data.append(log_max_block)
    list_of_data.append(log_avg_block)
    list_of_data.append(size_list)
    return list_of_data


def first_analtic_part(*argv):
    # print(argv)
    list_of_files = []
    for file_name in argv[0]:  # for each argument do...
        list_of_data = collect_labels_data(file_name)
        # [file_name, file_size, {'label': {'start':,'end':,'size':,'start_row_counter':,'num_of_rows':}}]
        #make_labels_csv(list_of_data)
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
        # print_label_file(list_of_data)  # print label statistics file
        # print_branch_file(list_of_data)  # printing branches statistics file
        print(list_of_data)
        list_of_data = print_flow_file(list_of_data)  # print flow file
        list_of_files.append(list_of_data)
        #print('@@@@@@@@@@@@@@@@@@@@@@@@\nsizeList:\n', list_of_data)

        # control flow graph - CFG
        G_directed = make_CFG(list_of_data)  # making the CFG
        draw_graph(G_directed)  # drawing the CFG
        #print(list_of_data)
        list_of_data[2]['CFG'] = G_directed
        flow_file = file_name.split('.')[0]
        flow_file += '_flow.csv'
        list_of_data[2]['bb_flow'] = split_bb_to_min_size(G_directed, list_of_data, flow_file)
        print_bb_dict(list_of_data[2]['bb_flow'])
        print_bb_dict_for_matlab(list_of_data[2]['bb_flow'])
        statistics_csv_write(flow_file, 'num,in_degree,out_degree', '\n')
        for v in G_directed:
            statistics_csv_write(flow_file, v, G_directed.in_degree(v), G_directed.out_degree(v), '\n')
    print('***********sha.s***********')
    statistics_csv_write('summery.csv', 'file_name', 'size in Kb', 'program size(Byte)', 'max_block_log',
                         'avg_block_log')
    for x in range(20):
        statistics_csv_write('summery.csv', '< size <= 2^' + str(x))
    statistics_csv_write('summery.csv', '\n')
    for l1 in list_of_files:
        size_list = l1[7]
        size_dict = {}
        for x in size_list:
            try:
                size_dict[str(x)] += 1
            except:
                size_dict[str(x)] = 1
        statistics_csv_write('summery.csv', l1[0], l1[1], OPSIZE * l1[3], l1[5], l1[6])
        print('******** max ', max(size_dict.keys()))
        for x in range(20):
            try:
                statistics_csv_write('summery.csv', size_dict[str(x)])
            except:
                statistics_csv_write('summery.csv', 0)
        statistics_csv_write('summery.csv', '\n')
        l1.append(size_dict)
        print(str(l1[7]))
        # size_dict = sorted(size_dict)
        print(size_dict.items())
        for x in sorted(size_dict):
            print(size_dict[x])


# printing in degree, incoming degree


def make_CFG(list_of_data):
    """return: G_directed made from list_of_data[2]
    """
    G_directed = nx.DiGraph()
    print(list_of_data[2]['flow'])
    for line in list_of_data[2]['flow']:
        line = list_of_data[2]['flow'][line]
        if line['start'] > 0:
            G_directed.add_node(line['num'])
            if is_a_branch(line['endBy']):  # explisit branches
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


def making_binary_and_assembly_files(source_name):
    """ This function get a combined binary and assembly file and convert it to tw seperate files
    :return: 2 txt files binary and assembly
    """
    with open(source_name) as asmFile:
        count_to_break = 0
        write_to_file('sha_binary.txt', 'title \n')
        write_to_file('sha_assembly.txt', ' asm,operator1,operator2\n')

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
                    write_to_file('sha_binary.txt', splited_string[1].rstrip(' ').rstrip(','), ',\n')
                write_to_file('sha_assembly.txt', splited_string[2].rstrip('\n') +'\t'+ splited_string[3].rstrip('\n') + ',\n')
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
        print(current_bb.num, '\t:\t', num_to_split_to, '\t:\t', bb_num_of_op_rows, '\t:\t', mean_command_for_bb, '\t:\t', decrease)

        num_to_split_to -= 1
        bb_num_of_op_rows -= decrease
        list_of_sub_bb.append(prev_sub_bb)
        print(current_bb.num, '\t:\t',num_to_split_to,'\t:\t',bb_num_of_op_rows,'\t:\t',mean_command_for_bb, '\t:\t', decrease)

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
    #print(end_bb.num)
    list_of_sub_bb.append(end_bb)
    print(current_bb.num, '\t:\t', num_to_split_to, '\t:\t', bb_num_of_op_rows, '\t:\t', mean_command_for_bb, '\t:\t', x)
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

# TODO: to be continue.. למצוא דרך לגשת לנתונים בסנכרון מלא
def split_bb_to_min_size(CFG, list_of_data, flow_file, bb_max=BB_MAX_BYTE_SIZE):
    asm_file_name = 'sha_assembly.txt'#list_of_data[0]
    flow_data = covert_references(list_of_data[2]['bb_flow'],' ')
    #print_bb_dict(flow_data)
    flow_data: {'': Basic_block}
    print(flow_data.keys())
    keys = list(flow_data.keys())
    prev_bb: Basic_block
    prev_bb = flow_data[keys[0]]
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
                counter+=1
                flow_data[splited_bb_list[x].num] = splited_bb_list[x]



    keys = list(flow_data.keys())
    next_for_matlab_dict = {}
    for key in keys:
        next_for_matlab_dict[flow_data[key].num] = flow_data[key].num_for_matlab
    print('next_for_matlab ', next_for_matlab_dict)
    for key in keys:
        bb:Basic_block
        bb=flow_data[key]
        next_block = bb.next1
        if next_block !='end':
            bb.next_for_matlab = next_for_matlab_dict[next_block]
        else:
            bb.next_for_matlab = 'end'
    return flow_data



    # print('Flow_data from \'split_bb_to_min_size\' func:\n ', flow_data)

    for v in CFG:
        print(v)
        # """ if(flow_data[v]['size'] > BB_MAX_SIZE):

        # if big tha max bb. splite, add to dict, and print to file"""
    return [CFG, list_of_data]


def is_a_branch(str):
    if ('ble' in str) or ('beq' in str):  # explisit branches
        return True
    else:
        return False


def print_dict(dict):
    print(
        'dict[x].num,\t, dict[x].start, \t, dict[x].start_row_counter, \t, dict[x].end, \t, dict[x].end_by,\t, dict[x].next1')
    for x in dict:
        print(dict[x].num, '\t', dict[x].start, '\t', dict[x].start_row_counter, '\t', dict[x].end, '\t',
              dict[x].end_by, '\t', dict[x].next1)


def convert_dict_to_classes(dict):
    keys = dict.keys()
    bb_dict = {}
    print(keys)
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
        bb_dict[key].is_it_con_branch = is_a_branch(dict[key]['endBy'])
        # todo:adding logic for next1 and next2 if needed
        bb_dict[key].next1 = dict[key]['next']
        bb_dict[key].next1_location = dict[key]['next_location']
        bb_dict[key].num_of_asm_rows = dict[key]['num_of_rows']
        # todo: change the file name to become generic
        bb_dict[key].num_of_long_commands = num_of_long_commands('sha.s', bb_dict[key].start_location,
                                                                 bb_dict[key].end_location)
        bb_dict[key].num_of_op_rows= bb_dict[key].num_of_long_commands + bb_dict[key].num_of_asm_rows
        bb_dict[key].byteSize = bb_dict[key].num_of_op_rows * OPSIZE
        bb_dict[key].end_row_op = bb_dict[key].start_row_op + bb_dict[key].num_of_op_rows
        prev_bb_end_row_op = bb_dict[key].end_row_op
    #print_bb_dict(bb_dict)
    return bb_dict


def print_bb_dict(dict:{'':Basic_block}):
    print('print_bb_dict:\n')
    statistics_csv_write('sha_bb_flow.csv', 'num,startBy,start_row,strart_row_op,start_location,endBy,end_row,end_row_op,end_location,'
                                            'have_con_branch?,next1,next1_location,num_of_asm_rows,long,rows_to_mul,size\n')
    print('num\tstartBy\tstart_row\tstrart_row_op\tstart_location\tendBy\tend_row\tend_row_op\tend_location\thave_con_branch?\t'
          'next1\tnext1_location\tnum_of_asm_rows\tlong\trows_to_mul')
    keys = dict.keys()
    for x in keys:
        y = dict[x]
        y: Basic_block
        print(y.num, '\t', y.startBy, '\t', y.start_row_counter, '\t', y.start_location, '\t', y.endBy,
              '\t', y.end_row_counter, '\t', y.end_location, '\t', y.is_it_con_branch, '\t', y.next1, '\t',
              y.next1_location, '\t', y.num_of_asm_rows, '\t', y.num_of_long_commands, '\t', y.num_of_op_rows,y.byteSize)
        statistics_csv_write('sha_bb_flow.csv', y.num, y.startBy, y.start_row_counter,y.start_row_op, y.start_location, y.endBy,
               y.end_row_counter, y.end_row_op, y.end_location, y.is_it_con_branch, y.next1,
              y.next1_location, y.num_of_asm_rows, y.num_of_long_commands, y.num_of_op_rows,y.byteSize,'\n')


def num_of_long_commands(asm_name=string, start=int, end=int):
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


def covert_references(bb_dict: dict, assembly_file: string):
    assembly_file = 'sha_assembly.txt'
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
        print(jump_dict)
        bb: Basic_block
        bb = bb_dict[key]
        if bb.next1 != 'end':
            bb.next1_location = jump_dict[bb.next1]
    return bb_dict

            #נשנה את הכתובות
            #מספור הפקודות הארוכות
            #גודל
            #תאום אסמבלי


    print()


def print_bb_dict_for_matlab(dict:{'':Basic_block}):
    statistics_csv_write('sha_bb_flow_for_matlab.csv', 'num,startBy,endBy,next,start,end,size\n')

    keys = dict.keys()
    for x in keys:
        y = dict[x]
        y: Basic_block
        statistics_csv_write('sha_bb_flow_for_matlab.csv', y.num_for_matlab, y.startBy,y.endBy,y.next_for_matlab,y.start_row_op,y.end_row_op,y.byteSize,'\n')


def main(*argv):  # *argv

    making_binary_and_assembly_files('sha_opcode.txt')
    first_analtic_part(*argv)
    # split_bb_to_min_size()
    #write_to_file('sha_binary.txt','title,,\n')
    #write_to_file('sha_binary.csv','end,,\n')
    # TODO: take blocks over size and split it/
    print('\n*******************************************************************\nSuccefully ended:\t'
          'DONT WORRY BE HAPPY :-)\n*******************************************************************')


#                   """******** Succesfully ended:	DONT WORRY BE HAPPY :-)********"""

# End of program


# make file name change alone
""" https://stackoverflow.com/questions/31350589/editing-paths-in-python
from sys import argv            # Imports module
import os

script, create = argv           # Gets script name and desired amount of copies

data = open(script)             # Creates a variable to store the script

indata = copy.read()            # Creates the data to be copied from the script


batData = 
echo off
%s
 %                           # This is not finished, creating that batch file

createT = int(create) + 1
for i in range(1, createT):     # Runs a set amount of times
    copyName = "%s.py" % str(i) # Creates the name for the file
    copy = open(copyName, 'w+') # Opens/creates the file for editing
    copy.write(indata)          # Writies the indata to the file opened
    copy.close                  # Closes that file

    batName = "%s.bat" % str(i)
    bat = open(batName, 'w+')"""
"""
def flow_after_spliting(file_name,combin_dict):
start location
end location
combin_dict sorted by num
    open file for reading.
    
     for x in combine_dict:
                        statistics_csv_write(file_name, combine_dict[x]['num'], x, combine_dict[x]['endBy'], combine_dict[x]['next']
                                 , combine_dict[x]['start'], combine_dict[x]['end'], size,
                                 math.ceil(math.log(size, 2)), '\n')
"""

if __name__ == "__main__":
    main(sys.argv[1:])
