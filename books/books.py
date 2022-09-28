'''
    Khizar Qureshi & Kendra Winhall
    books.py
    For use in the "books" assignment at the beginning of Carleton's
    CS 257 Software Design class, Fall 2022.
'''
import sys
import booksdatasource
file = open("usage.txt", "r")
usage_statement = file.read()

def parse_command_line():
    arguments = {}
    '''
    elif len(sys.argv) == 2:
        arguments['command'] = sys.argv[1]
        print(arguments['command'])

    elif len(sys.argv) == 3:
        arguments['command'] = sys.argv[1]
        print(arguments['command'])
    '''

    if 1 < len(sys.argv) < 5:
        number_of_arguments = len(sys.argv)
        for i in range (number_of_arguments):
            arguments['command' + str(i)] = sys.argv[i]
            #print(arguments['command' + str(i-1)])
        print(arguments)
    else:
        print(usage_statement)
        
parse_command_line()
    