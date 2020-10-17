import csv
import sys
from pathlib import Path
import math

# asemly = open('C:\\Users\\DELL\OneDrive\\avichaiAndBarak\\HarryPoter2.pdf', 'rb')
# Creating a pdf reader object
# pdfReader = PyPDF2.PdfFileReader(pdfFileObj)
# Getting number of pages in pdf file
# pages = pdfReader.numPages
"""for prog_location in sys.arg[1:]: """


def collect_labels_data(filename):
    # (filename, file_address)
    """ this func make a dict consisted from the labels data,\n
    **** return [file_name, file_size, {'label': {'start':,'end':,'size':,'start_row_counter':,'num_of_rows':}},
    all_commands_counter]\n
    -TODO: try to initialize the dict without 'empty'"""
    file_name = filename
    file_size = 0
    #basic = Path(r+file_name)
    # basic = 'C:\Users\DELL\OneDrive - Bar-Ilan University\הרצאות וחומרי קורסים\Final Project\'
    # file_address = basic + file_name
    print(file_name)
    labels = {'empty': {'start': 0, 'start_row_counter': 0}}
    row_counter = 0
    size_counter = 0
    with open(file_name) as asmFile:
        flag = True
        temp_prev_label = 'empty'
        while flag:
            label_location = asmFile.tell()
            asmReader = asmFile.readline()  # reading new line
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
                    print("****************8*********\nFile size is\t:", file_size, all_commands_counter)
                    # print('the first label is:\t', list(labels)[1])
                    # (labels[tempList[0]])['end'] = asmFile.tell()
                    asmFile.seek(labels[list(labels)[1]]['start'])  # moving the reader to the start of the file
                    flag = False  # for ending the search for labels
                else:
                    row_counter -= 1  # decrease the label counting
                    labels[tempList[0]] = {'start': label_location}
                    (labels[tempList[0]])['end'] = asmFile.tell()
                    labels[tempList[0]]['start_row_counter'] = row_counter
                    (labels[temp_prev_label])['end'] = label_location
                    (labels[temp_prev_label])['num_of_rows'] = row_counter - (labels[temp_prev_label])[
                        'start_row_counter']
                    (labels[temp_prev_label])['size'] = label_location - (labels[temp_prev_label])['start']
                    temp_prev_label = tempList[0]
                    print(labels[tempList[0]])
            elif '@' in asmReader or asmReader.startswith('\t.'):
                row_counter -= 1
        print(labels)
    return list([file_name, file_size, labels, all_commands_counter])


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
    row_counter = 0
    labels_csv_write('\n', 'LineNum,inLabel,command,JumpToLabel,jumpToAd,start_row_counter', '\n')  # Head Title
    with open(file_name) as asmFile:
        asmReader = asmFile.readline()  # reading new line
        asmFile.seek(labels[list(labels)[1]]['start'])
        flag = True
        while flag:
            before_command_location = asmFile.tell()
            str_bcl = str(before_command_location)
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
                print(asmReader)
                print(before_command_location)
                st = st.split('\t')
                print(st)
                jump_dict[str_bcl] = {'command': st[1], 'l_target': st[2], 'start_row_counter': row_counter}
                flag = False  ##*****************************************************************************
                for x in labels:
                    #print('x', x, 'st[2]', st[2])
                    if x != 'empty':
                        # find in which label the brach placed
                        if (labels[x]['start'] < before_command_location) and \
                                (labels[x]['end'] > before_command_location):
                            jump_dict[str_bcl]['command_in_label'] = x
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
    print('######$$$$$#$##$#$##$$$$$$$$$$$$$$$$$')
    print(branches,'\n')
    print(labels, '\n')
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
    counter = 1
    i = 0
    j = 0
    prev_block = 'start'
    prev_start = 0
    size_list = list()
    print(l_key[0])
    print(b_key)
    while (i < len(l_key)) and (j < len(b_key)):
        if labels[l_key[i]]['start'] < int(b_key[j]):
            combine_dict[prev_block]['end'] = labels[l_key[i]]['start_row_counter']
            combine_dict[prev_block]['endBy'] = l_key[i]
            combine_dict[prev_block]['next'] = l_key[i]
            combine_dict[prev_block]['size'] = labels[l_key[i]]['start_row_counter'] - prev_start
            prev_start = labels[l_key[i]]['start_row_counter']
            if not (combine_dict[prev_block]['size'] == 0):
                counter += 1
            combine_dict[l_key[i]] = {'num': counter, 'start': labels[l_key[i]]['start_row_counter']}
            prev_block = l_key[i]
            i += 1
        else:
            full_command = branches[b_key[j]]['command'] + '->' + branches[b_key[j]]['l_target']
            combine_dict[prev_block]['end'] = branches[b_key[j]]['start_row_counter']
            combine_dict[prev_block]['endBy'] = full_command
            combine_dict[prev_block]['next'] = branches[b_key[j]]['l_target']
            combine_dict[prev_block]['size'] = branches[b_key[j]]['start_row_counter'] - prev_start
            prev_start = branches[b_key[j]]['start_row_counter']
            if not (combine_dict[prev_block]['size'] == 0):
                counter += 1
            combine_dict[full_command] = {'num': counter, 'start': branches[b_key[j]]['start_row_counter']}
            prev_block = full_command
            j += 1

    while i < len(l_key):
        combine_dict[prev_block]['end'] = labels[l_key[i]]['start_row_counter']
        combine_dict[prev_block]['endBy'] = l_key[i]
        combine_dict[prev_block]['next'] = l_key[i]
        combine_dict[prev_block]['size'] = labels[l_key[i]]['start_row_counter'] - prev_start
        if not (combine_dict[prev_block]['size'] == 0):
            counter += 1
        prev_start = labels[l_key[i]]['start_row_counter']
        combine_dict[l_key[i]] = {'num': counter, 'start': labels[l_key[i]]['start_row_counter']}
        prev_block = l_key[i]
        i += 1

    while j < len(b_key):
        full_command = branches[b_key[j]]['command'] + '->' + branches[b_key[j]]['l_target']
        combine_dict[prev_block]['end'] = branches[b_key[j]]['start_row_counter']
        combine_dict[prev_block]['endBy'] = full_command
        combine_dict[prev_block]['next'] = branches[b_key[j]]['l_target']
        combine_dict[prev_block]['size'] = branches[b_key[j]]['start_row_counter'] - prev_start
        prev_start = branches[b_key[j]]['start_row_counter']
        if not (combine_dict[prev_block]['size'] == 0):
            counter += 1
        combine_dict[full_command] = {'num': counter, 'start': branches[b_key[j]]['start_row_counter']}
        prev_block = full_command
        j += 1
    combine_dict[prev_block]['end'] = num_of_commands
    combine_dict[prev_block]['size'] = num_of_commands - prev_start

    # cleaning the dic from size = 0
    j = 0
    keys = list(combine_dict.keys())
    print(keys)
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
        size = combine_dict[x]['size'] * 4
        if size <= 0:
            size = size*(-1)
            size+=1
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
    size_of_commands = list_of_data[3] * 4
    log_file_size = size_of_commands
    log_avg_block = math.ceil(math.log(blocks_average, 2))
    log_max_block = math.ceil(math.log(blocks_max, 2))

    statistics_csv_write(file_name, 'file size:', file_size, '\nMax size:,', blocks_max, '\nAverage size:,',
                         blocks_average, '\nnum of commands *4 :,', size_of_commands, '\n')
    statistics_csv_write(file_name, 'log data:', '\n')
    statistics_csv_write(file_name, 'file size:', log_file_size, '\nMax size:,', log_max_block, '\nAverage size:,',
                         log_avg_block, '\nnum of commands * 4:,', math.ceil(math.log(size_of_commands, 2)), '\n')
    list_of_data.append(math.ceil(math.log(size_of_commands, 2)))
    list_of_data.append(log_max_block)
    list_of_data.append(log_avg_block)
    list_of_data.append(size_list)
    return list_of_data


def main(*argv):  # *argv
    print(argv)
    list_of_files = []
    for file_name in argv[0]:  # for each argument do...
        list_of_data = collect_labels_data(file_name)
        # [file_name, file_size, {'label': {'start':,'end':,'size':,'start_row_counter':,'num_of_rows':}}]
        make_labels_csv(list_of_data)
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
        #print_branch_file(list_of_data)  # printing branches statistics file
        print(list_of_data)
        list_of_data = print_flow_file(list_of_data)  # print flow file
        list_of_files.append(list_of_data)
        print('@@@@@@@@@@@@@@@@@@@@@@@@\nsizeList:\n', list_of_data)
    print('***********sha.s***********')
    statistics_csv_write('summery.csv', 'file_name', 'size in Kb', 'program size(Byte)', 'max_block_log', 'avg_block_log')
    for x in range(15):
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
        statistics_csv_write('summery.csv', l1[0], l1[1], 4 * l1[3], l1[5], l1[6])
        print('******** max ', max(size_dict.keys()))
        for x in range(15):
            try:
                statistics_csv_write('summery.csv', size_dict[str(x)])
            except:
                statistics_csv_write('summery.csv', 0)
        statistics_csv_write('summery.csv', '\n')
        l1.append(size_dict)
        print(str(l1[7]))
        #size_dict = sorted(size_dict)
        print(size_dict.items())
        for x in sorted(size_dict):
            print(size_dict[x])


    print('\n*******************************************************************\nSuccefully ended:\t'
          'DONT WORRY BE HAPPY :-)\n*******************************************************************')
"""********Succefully ended:	DONT WORRY BE HAPPY :-)********"""

# End of program

# log base 2 round uo
"""
math.log(8,2)
math.ceil(4.2)
math.ceil(math.log(8,2))
"""

# write labels to csv
""""           writer.writerow(('Label', 'StartPoint', 'EndPoint', 'Size'))
            blocks_counter = 0
            blocks_sum = 0
            blocks_max = 0
            for x in labels:
                if x != 'empty':
                    start = labels[x]['start']
                    end = labels[x]['end']
                    size = end - start
                    labels[x]['size'] = size
                    writer.writerow((x, start, end, size))
                    blocks_sum += size
                    blocks_counter += 1
                    if size > blocks_max:
                        blocks_max = size
            blocks_avarage = blocks_sum / blocks_counter
            statistics_csv_write(blocks_avarage, blocks_max)
            writer.writerow(('end', 'end', 'end'))
            writer.writerow((' ', ' ', ' '))"""

# jump- find and export
"""        with open('labelsMapping.csv', 'w') as csvfile:
            writer = csv.writer(csvfile, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)

            writer.writerow(('LineNum', 'command', 'JumpTo'))
            #    writer.writerows(labels)
            asmFile.seek(labels[list(labels)[1]]['start'])
            flag = True
            jump_dict = {}
            while flag:
                asmReader = asmFile.readline()
                command_location = asmFile.tell()
                if ".ident	\"GCC: (Ubuntu/Linaro 7.4.0-1ubuntu1~18.04.1) 7.4.0\"" in asmReader:
                    asmFile.seek(labels[list(labels)[1]]['start'])
                    flag = False
                elif (asmReader.startswith('\tb')) and ('sub' not in asmReader) and ('printf' not in asmReader) and (
                        not (asmReader.startswith('.'))) and ('__stack_chk_fail' not in asmReader) and (
                        ':' not in asmReader):
                    st = asmReader.replace('\n', '')
                    print(asmReader)
                    print(command_location)
                    asmReader = asmReader + '\t'
                    # st = asmReader.split(',')
                    st = st.split('\t')
                    print(st)
                    writer.writerow((command_location, st[1], st[2] + '.'))
                    for x in labels:
                        if (x != 'empty') and (labels[x]['start'] < command_location) and (
                                labels[x]['end'] > command_location):
                            print('command:\t', asmReader.split('\n')[0], '\nat:\t\t', asmFile.tell(),
                                  '\nis in basic block:\t', x)
    statistics_csv_write('\n')"""

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

if __name__ == "__main__":
    main(sys.argv[1:])
# print label statistics file
"""
blocks_counter = 0
    blocks_sum = 0
    blocks_max = 0
    statistics_csv_write('label.csv', 'name', 'start', 'end', 'size', 'log_2', 'start_row_counter', 'commands in block', '\n')
    labels = list_of_data[2]['label']
    branchs = list_of_data[2]['branch']

    for x in labels:
        start = labels[x]['start']
        end = labels[x]['end']
        size = labels[x]['num_of_rows']
        start_row_counter = labels[x]['start_row_counter']
        commands_in_block = labels[x]['num_of_rows']
        if size > 0 :
            statistics_csv_write('label.csv', x, start, end, size, math.ceil(math.log(size, 2)), start_row_counter,
                                commands_in_block, '\n')
            blocks_sum += size
            blocks_counter += 1
            if size > blocks_max:
                blocks_max = size

    blocks_average = math.ceil(blocks_sum / blocks_counter)
    log_file_size = math.ceil(math.log(file_size, 2))
    log_avg_block = math.ceil(math.log(blocks_average, 2))
    log_max_block = math.ceil(math.log(blocks_max, 2))
    statistics_csv_write('label.csv', 'file size:', file_size, '\nMax size:,', blocks_max, '\nAverage size:,',
                         blocks_average, '\ncommands in file:', num_of_commands, '\n')
    statistics_csv_write('label.csv', 'log data:', '\n')
    statistics_csv_write('label.csv', 'file size:', log_file_size, '\nMax size:,', log_max_block, '\nAverage size:,',
                         log_avg_block, '\n')
"""
# print branch statistics file
"""
 labels = list_of_data[2]['label']
    branchs = list_of_data[2]['branch']
    blocks_counter = 0
    blocks_sum = 0
    blocks_max = 0
    start = 0
    statistics_csv_write('branch.csv', 'num', 'ended by', 'continue to', 'start', 'end', 'size', 'log_2', 'start_row_counter', 'commands in block', '\n')
    branch = list_of_data[2]['branch']
    for x in branch:
        end = branchs[x]['start_row_counter']
        size = end - start
        blocks_sum += size
        blocks_counter += 1
        statistics_csv_write('branch.csv', blocks_counter, branch[x]['command'], branch[x]['l_target'],
                             start, end, size, math.ceil(math.log(size, 2)), branch[x]['start_row_counter'], size, '\n')
        start = end
        if size > blocks_max:
            blocks_max = size

    blocks_average = math.ceil(blocks_sum / blocks_counter)
    log_file_size = math.ceil(math.log(file_size, 2))
    log_avg_block = math.ceil(math.log(blocks_average, 2))
    log_max_block = math.ceil(math.log(blocks_max, 2))
    statistics_csv_write('branch.csv', 'file size:', file_size, '\nMax size:,', blocks_max, '\nAverage size:,',
                         blocks_average, '\n')
    statistics_csv_write('branch.csv', 'log data:', '\n')
    statistics_csv_write('branch.csv', 'file size:', log_file_size, '\nMax size:,', log_max_block, '\nAverage size:,',
                         log_avg_block, '\n')
"""
# print flow file
"""
    labels = list_of_data[2]['label']
    branchs = list_of_data[2]['branch']
    blocks_counter = 0
    blocks_sum = 0
    blocks_max = 0
    start = 0
    branch = list_of_data[2]['branch']
    # TODO: statistics csv, print Dugri file combining the label and branches save flow to object
    l_key = list(labels.keys())
    b_key = list(branchs.keys())
    combine_dict = {'start': {'start': 0}}
    current_point = 0
    i = 0
    j = 0
    prev_block = 'start'
    prev_start = 0
    print(l_key[0])
    print(b_key)
    while (i < len(l_key)) and (j < len(b_key)):
        if labels[l_key[i]]['start'] < int(b_key[j]):
            combine_dict[prev_block]['end'] = labels[l_key[i]]['start_row_counter']
            combine_dict[prev_block]['size'] = labels[l_key[i]]['start_row_counter'] - prev_start
            prev_start = labels[l_key[i]]['start_row_counter']
            combine_dict[l_key[i]] = {'start': labels[l_key[i]]['start_row_counter']}
            prev_block = l_key[i]
            i += 1
        else:
            full_command = branchs[b_key[j]]['command'] + '->' + branchs[b_key[j]]['l_target']
            combine_dict[prev_block]['end'] = branchs[b_key[j]]['start_row_counter']
            combine_dict[prev_block]['size'] = branchs[b_key[j]]['start_row_counter'] - prev_start
            prev_start = branchs[b_key[j]]['start_row_counter']
            combine_dict[full_command] = {'start': branchs[b_key[j]]['start_row_counter']}
            prev_block = full_command
            j += 1

    while (i < len(l_key)):
        combine_dict[prev_block]['end'] = labels[l_key[i]]['start_row_counter']
        combine_dict[prev_block]['size'] = labels[l_key[i]]['start_row_counter'] - prev_start
        prev_start = labels[l_key[i]]['start_row_counter']
        combine_dict[l_key[i]] = {'start': labels[l_key[i]]['start_row_counter']}
        prev_block = l_key[i]
        i += 1

    while j < len(b_key):
        full_command = branchs[b_key[j]]['command'] + '->' + branchs[b_key[j]]['l_target']
        combine_dict[prev_block]['end'] = branchs[b_key[j]]['start_row_counter']
        combine_dict[prev_block]['size'] = branchs[b_key[j]]['start_row_counter'] - prev_start
        prev_start = branchs[b_key[j]]['start_row_counter']
        combine_dict[full_command] = {'start': branchs[b_key[j]]['start_row_counter']}
        prev_block = full_command
        j += 1
    combine_dict[prev_block]['end'] = num_of_commands
    combine_dict[prev_block]['size'] = num_of_commands - prev_start

    # clculating the avg size max size and logs
    blocks_counter = 0
    blocks_sum = 0
    blocks_max = 0

    statistics_csv_write('combined.csv', 'name,start,end,size,log_2', '\n')
    for x in combine_dict:
        size = combine_dict[x]['size']
        blocks_sum += size
        blocks_counter += 1
        if size > blocks_max:
            blocks_max = size
        print(size)
        if not(x == 'start'):
            statistics_csv_write('combined.csv', x, combine_dict[x]['start'], combine_dict[x]['end'], size,
                                 math.ceil(math.log(size+1, 2)), '\n')
    blocks_average = math.ceil(blocks_sum / blocks_counter)
    log_file_size = math.ceil(math.log(file_size, 2))
    log_avg_block = math.ceil(math.log(blocks_average, 2))
    log_max_block = math.ceil(math.log(blocks_max, 2))

    statistics_csv_write('combined.csv', 'file size:', file_size, '\nMax size:,', blocks_max, '\nAverage size:,',
                         blocks_average, '\nnum of commands:,', list_of_data[3], '\n')
    statistics_csv_write('combined.csv', 'log data:', '\n')
    statistics_csv_write('combined.csv', 'file size:', log_file_size, '\nMax size:,', log_max_block, '\nAverage size:,',
                         log_avg_block, '\nnum of commands:,', math.ceil(math.log(list_of_data[3], 2)), '\n')
"""
