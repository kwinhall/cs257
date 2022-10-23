#!/usr/bin/env python3
'''
olympics.py
Kendra Winhall, 22 Oct 2022
For use in the "olympics" assignment in
Carleton's CS 257 Software Design class
Adapted from Jeff Ondich's psycopg2-sample.py
A command-line program that enables a user to search 
through a database of information about the olympics.
'''

import sys
import psycopg2
import config

file = open('usage.txt', 'r')
usage_statement = file.read()
command_dictionary = {
    'region' : 'nocs',
    'noc' : 'nocs',
    'medal' : 'results'
}

def get_connection(): #full credit to Jeff Ondich for this function
    ''' Returns a database connection object with which you can create cursors,
        issue SQL queries, etc.'''
    try:
        return psycopg2.connect(database=config.database,
                                user=config.user,
                                password=config.password)
    except Exception as e:
        print(e, file=sys.stderr)
        exit()

def search_athletes(criteria_type = None, criteria_text = None):
    '''Creates a PostgreSQL query to search athletes, executes the query, and stores the data in a list.'''
    if criteria_type == None or criteria_text == None:
        query = '''SELECT athletes.name from athletes;'''
    elif criteria_type.lower() not in command_dictionary:
        return 'Invalid search criteria. Please type -h or --help for usage statement.'
    else:
        criteria_type = criteria_type.lower()
        criteria_table_name = command_dictionary[criteria_type]
        if criteria_type == 'medal':
            id_name = criteria_type
        else:
            id_name = criteria_table_name[:-1] + '_id'
        if criteria_table_name == 'results' or criteria_table_name == 'athletes':
            query = f'''SELECT DISTINCT athletes.name
            FROM athletes, results
            WHERE athletes.id = results.athlete_id 
            AND {criteria_table_name}.{criteria_type} ILIKE '{criteria_text}'
            ORDER BY athletes.name;'''
        else: 
            query = f'''SELECT DISTINCT athletes.name
            FROM athletes, results, {criteria_table_name}
            WHERE athletes.id = results.athlete_id 
            AND {criteria_table_name}.id = results.{id_name}
            AND {criteria_table_name}.{criteria_type} ILIKE '{criteria_text}'
            ORDER BY athletes.name;'''
    
    athlete_list = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query)
        for row in cursor:
            athlete_list.append(row[0])
    except Exception as e:
        print(e, file=sys.stderr)
    connection.close()
    return athlete_list

def search_nocs_medals(criteria_type = None, criteria_text = None, sort_by = 'medal', descending = 'False'):
    '''Creates a PostgreSQL query to search NOCs, executes the query, and stores the data in a list.'''
    if criteria_type == None or criteria_text == None:
        query = '''SELECT nocs.noc, COUNT(results.medal)
        FROM nocs, results
        WHERE nocs.id = results.noc_id
        GROUP BY nocs.noc''' 
    elif criteria_type.lower() not in command_dictionary or criteria_type.lower() == 'region':
        print('Invalid search criteria. Please type -h or --help for usage statement.')
        return
    else:
        criteria_type = criteria_type.lower()
        criteria_table_name = command_dictionary[criteria_type]
        if criteria_type == 'medal':
            id_name = criteria_type
        else:
            id_name = criteria_table_name[:-1] + '_id'
        if criteria_table_name == 'results' or criteria_table_name == 'nocs':
            query = f'''SELECT nocs.noc, COUNT(results.medal)
            FROM nocs, results
            WHERE nocs.id = results.noc_id
            AND {criteria_table_name}.{criteria_type} ILIKE '{criteria_text}'
            GROUP BY nocs.noc'''
        else: 
            query = f'''SELECT nocs.noc, COUNT(results.medal)
            FROM nocs, results, {criteria_table_name}
            WHERE nocs.id = results.noc_id
            AND {criteria_table_name}.id = results.{id_name}
            AND {criteria_table_name}.{criteria_type} ILIKE '{criteria_text}'
            GROUP BY nocs.noc'''
    if sort_by not in command_dictionary or sort_by == 'region':
        print('Invalid sorting command. Please type -h or --help for usage statement.')
        return
    if sort_by.lower() == 'medal':
        if descending == 'True':
            query = query + '\nORDER BY COUNT(results.medal) DESC;'
        else:
            query = query + '\nORDER BY COUNT(results.medal);'
    elif descending == 'True':
        query = query + f'\nORDER BY nocs.{sort_by.lower()} DESC;'
    else:
        query = query + f'\nORDER BY nocs.{sort_by.lower()};'
    noc_medal_list = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query)
        for row in cursor:
            noc = row[0]
            medal_count = row[1]
            noc_medal_list.append(f'{noc}, {medal_count}')
    except Exception as e:
        print(e, file=sys.stderr)
    connection.close()
    return noc_medal_list

def parse_command_line():
    '''Parses through the command line and appends each argument to arguments[]'''
    arguments = []
    if 1 < len(sys.argv) < 8 :
        number_of_arguments = len(sys.argv)
        for i in range (number_of_arguments):
            arguments.append(sys.argv[i])
        return arguments
    else:
        print('Invalid number of arguments. Please type -h or --help for usage statement.')

def execute_user_command():
    '''Calls search functions based on user input.'''
    arguments = parse_command_line()
    if arguments == None:
        return
    elif arguments[1] == 'a' or arguments[1] == 'athlete':
        if len(arguments) == 2:
            return search_athletes()
        elif len(arguments) == 4:
            if arguments[2] in command_dictionary:
                return search_athletes(arguments[2], arguments[3])   
            else:
                print('Invalid search criteria. Please type -h or --help for usage statement.')
        else:
            print('Invalid number of arguments. Please type -h or --help for usage statement.')
    elif arguments[1] == 'n' or arguments[1] == 'noc':
        if len(arguments) == 2:
            return search_nocs_medals()
        elif len(arguments) == 3:
            if arguments[2] == '-s' or arguments[2] == '--sort':
                return search_nocs_medals()
            else: print('Invalid input. Please type -h or --help for usage statement.')
        elif (arguments[2] == '-s' or arguments[2] == '--sort') and arguments[3] in command_dictionary:
            if len(arguments) == 4:
                return search_nocs_medals(None, None, arguments[3])
            elif len(arguments) == 5:
                print(arguments)
                if arguments[4] == '-d' or arguments[4] == '--descending':
                    return search_nocs_medals(None, None, arguments[3], 'True')
                else:
                    return search_nocs_medals(None, None, arguments[3])
            else:
                print('Invalid input. Please type -h or --help for usage statement.')
        elif arguments[2] in command_dictionary:
            if len(arguments) == 4:
                return search_nocs_medals(arguments[2], arguments[3])
            elif arguments[4] == '-s' or arguments[4] == '--sort':
                if len(arguments) == 5:
                    return search_nocs_medals(arguments[2], arguments[3])
                elif arguments[5] in command_dictionary:
                    if len(arguments) == 6:
                        return search_nocs_medals(arguments[2], arguments[3], arguments[5])
                    elif len(arguments) == 7:
                        if arguments[6] == '-d' or arguments[6] == '--descending':
                            return search_nocs_medals(arguments[2], arguments[3], arguments[5], 'True')
                        else:
                            return search_nocs_medals(arguments[2], arguments[3], arguments[5])
                    else:
                        print('Invalid input. Please type -h or --help for usage statement.')
                else:
                    print('Invalid input. Please type -h or --help for usage statement.')
            else:
                print('Invalid input. Please type -h or --help for usage statement.')
        else:
            print('Invalid input. Please type -h or --help for usage statement.')
    elif arguments[1] == '-h' or arguments[1] == '--help':
        print(usage_statement)
    else:
        print('Invalid search command. Please type -h or --help for usage statement.')
    
def main():
    '''Prints the data that the user asked for.'''
    entries = execute_user_command()
    if entries == None:
        return
    else:
        for entry in entries:
            print(entry)

main()
