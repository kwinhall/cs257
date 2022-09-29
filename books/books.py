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
    arguments = []

    if 1 < len(sys.argv) < 5 :
        number_of_arguments = len(sys.argv)
        for i in range (number_of_arguments):
            arguments.append(sys.argv[i])
        return arguments
    else:
        print(usage_statement)
    

def main():
    arguments = parse_command_line()

    if arguments==None:
        return

    elif len(arguments) == 2:
        if arguments[1] == "title" or arguments[1]=="t":
            print("yeet")
            books_data_source = booksdatasource.BooksDataSource('books1.csv')
            filtered_books = books_data_source.books()
            for book in filtered_books:
                print(book.title)

        elif arguments[1] == "author" or arguments[1] == "a":
            books_data_source = booksdatasource.BooksDataSource('books1.csv')
            filtered_authors = books_data_source.authors()
            for author in filtered_authors:
                print(author.given_name + " " + author.surname)
        
        elif arguments[1] == "years" or arguments[1] == "y":
            print("still working on it lol")  

        else:
            print(usage_statement)       

    elif len(arguments) == 3:
        if arguments[1] == "title" or arguments[1]=="t":
            books_data_source = booksdatasource.BooksDataSource('books1.csv')
            filtered_books = books_data_source.books(arguments[2])
            for book in filtered_books:
                print(book.title)

        elif arguments[1] == "author" or arguments[1] == "a":
            books_data_source = booksdatasource.BooksDataSource('books1.csv')
            filtered_authors = books_data_source.authors(arguments[2])
            for author in filtered_authors:
                print(author.given_name + " " + author.surname)

        elif arguments[1] == "years" or arguments[1] == "y":
            print("still working on it lol") 

        else:
            print(usage_statement) 

    elif len(arguments) == 4:
        print('test')
        if arguments[1] == "title" or arguments[1]=="t":
            books_data_source = booksdatasource.BooksDataSource('books1.csv')
            filtered_books = books_data_source.books(arguments[2], arguments[3])
            for book in filtered_books:
                print(book.title)

        elif arguments[1] == "years" or arguments[1] == "y":
            print("still working on it lol") 

        else:
            print(usage_statement) 



main()