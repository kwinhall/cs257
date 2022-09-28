#!/usr/bin/env python3
'''
    Khizar Qureshi & Kendra Winhall
    booksdatasource.py
    Jeff Ondich, 21 September 2022
    For use in the "books" assignment at the beginning of Carleton's
    CS 257 Software Design class, Fall 2022.
'''

import csv

class Author:
    def __init__(self, surname='', given_name='', birth_year=None, death_year=None, books=[]):
        self.surname = surname
        self.given_name = given_name
        self.birth_year = birth_year
        self.death_year = death_year
        self.books = books

    def __eq__(self, other):
        ''' For simplicity, we're going to assume that no two authors have the same name. '''
        return self.surname == other.surname and self.given_name == other.given_name

    # For sorting authors, you could add a "def __lt__(self, other)" method
    # to go along with __eq__ to enable you to use the built-in "sorted" function
    # to sort a list of Author objects.

class Book:
    def __init__(self, title='', publication_year=None, authors=[]):
        ''' Note that the self.authors instance variable is a list of
            references to Author objects. '''
        self.title = title
        self.publication_year = publication_year
        self.authors = authors

    def __eq__(self, other):
        ''' We're going to make the excessively simplifying assumption that
            no two books have the same title, so "same title" is the same
            thing as "same book". '''
        return self.title == other.title

    # For sorting books, you could add a "def __lt__(self, other)" method
    # to go along with __eq__ to enable you to use the built-in "sorted" function
    # to sort a list of Book objects.

class BooksDataSource:
    def __init__(self, books_csv_file_name):
        ''' The books CSV file format looks like this:
                title,publication_year,author_description
            For example:
                All Clear,2010,Connie Willis (1945-)
                "Right Ho, Jeeves",1934,Pelham Grenville Wodehouse (1881-1975)
            This __init__ method parses the specified CSV file and creates
            suitable instance variables for the BooksDataSource object containing
            a collection of Author objects and a collection of Book objects.
        '''
        file = open(books_csv_file_name)
        self.author_list = []
        self.book_list = []
        
        for column in file: 
            two_authors = False
            this_authors_books = []
            fields = column.split(",")
            if len(fields) == 3:
                title = fields[0]
                publication_year = fields[1]
                author_description = fields[2]
                author_fields = author_description.split(" ")
                if len(author_fields)== 3:
                    given_name = author_fields[0]
                    surname = author_fields[1]
                    authors_lifespan = author_fields[2]
                    authors_lifespan = authors_lifespan.replace("(", "")
                    authors_lifespan = authors_lifespan.replace(")", "")
                    years_fields = authors_lifespan.split("-")
                    if len(years_fields) == 2:
                        birth_year = years_fields[0]
                        death_year = years_fields[1]
                        
                    else:
                        birth_year = years_fields[0]
                        death_year = None
                        
                elif len(author_fields) == 4:
                    given_name = author_fields[0] 
                    surname = author_fields[1] + "," + author_fields[2]
                    authors_lifespan = author_fields[3]
                    authors_lifespan = authors_lifespan.replace("(", "")
                    authors_lifespan = authors_lifespan.replace(")", "")
                    years_fields = authors_lifespan.split("-")
                    
                    if len(years_fields) == 2:
                        birth_year = years_fields[0]
                        death_year = years_fields[1]
                        
                    else:
                        birth_year = years_fields[0]
                        death_year = None
                        
                elif len(author_fields) == 7:
                    given_name = author_fields[0]
                    surname = author_fields[1]
                    authors_lifespan = author_fields[2]
                    authors_lifespan = authors_lifespan.replace("(", "")
                    authors_lifespan = authors_lifespan.replace(")", "")
                    years_fields = authors_lifespan.split("-")
                    
                    if len(years_fields) == 2:
                        birth_year = years_fields[0]
                        death_year = years_fields[1]
                        
                    else:
                        birth_year = years_fields[0]
                        death_year = None
                    
                    given_name_2 = author_fields[4]
                    surname_2 = author_fields[5]
                    authors_lifespan_2 = author_fields[6]
                    authors_lifespan_2 = authors_lifespan_2.replace("(", "")
                    authors_lifespan_2 = authors_lifespan_2.replace(")", "")
                    years_fields_2 = authors_lifespan_2.split("-")
                    
                    if len(years_fields_2) == 2:
                        birth_year_2 = years_fields_2[0]
                        death_year_2 = years_fields_2[1]
                        
                    else:
                        birth_year_2 = years_fields_2[0]
                        death_year_2 = None
                else:
                    raise ValueError
                                    
                
            elif len(fields) == 4:
                title = fields[0] + ", " + fields[1]
                publication_year = fields[2]
                author_description = fields[3]
                author_fields = author_description.split(" ")
                
                if len(author_fields)== 3:
                    given_name = author_fields[0]
                    surname = author_fields[1]
                    authors_lifespan = author_fields[2]
                    authors_lifespan = authors_lifespan.replace("(", "")
                    authors_lifespan = authors_lifespan.replace(")", "")
                    years_fields = authors_lifespan.split("-")
                    if len(years_fields) == 2:
                        birth_year = years_fields[0]
                        death_year = years_fields[1]
                        
                    else:
                        birth_year = years_fields[0]
                        death_year = None
                        
                elif len(author_fields) == 4:
                    given_name = author_fields[0] 
                    surname = author_fields[1] + "," + author_fields[2]
                    authors_lifespan = author_fields[3]
                    authors_lifespan = authors_lifespan.replace("(", "")
                    authors_lifespan = authors_lifespan.replace(")", "")
                    years_fields = authors_lifespan.split("-")
                    
                    if len(years_fields) == 2:
                        birth_year = years_fields[0]
                        death_year = years_fields[1]
                        
                    else:
                        birth_year = years_fields[0]
                        death_year = None
                        
                elif len(author_fields) == 7:
                    two_authors = True
                    this_authors_2_books = []
                    given_name = author_fields[0]
                    surname = author_fields[1]
                    authors_lifespan = author_fields[2]
                    authors_lifespan = authors_lifespan.replace("(", "")
                    authors_lifespan = authors_lifespan.replace(")", "")
                    years_fields = authors_lifespan.split("-")
                    
                    if len(years_fields) == 2:
                        birth_year = years_fields[0]
                        death_year = years_fields[1]
                        
                    else:
                        birth_year = years_fields[0]
                        death_year = None
                    
                    given_name_2 = author_fields[4]
                    surname_2 = author_fields[5]
                    authors_lifespan_2 = author_fields[6]
                    authors_lifespan_2 = authors_lifespan_2.replace("(", "")
                    authors_lifespan_2 = authors_lifespan_2.replace(")", "")
                    years_fields_2 = authors_lifespan_2.split("-")
                    
                    if len(years_fields_2) == 2:
                        birth_year_2 = years_fields_2[0]
                        death_year_2 = years_fields_2[1]
                        
                    else:
                        birth_year_2 = years_fields_2[0]
                        death_year_2 = None
                else:
                    raise ValueError 
            else:
                raise ValueError
                
            author_is_in_list = False
            for i in range (len(self.author_list)):
                if self.author_list[i].given_name != given_name or self.author_list[i].surname != surname:
                    i += 1
                else:
                    author_is_in_list = True
                    break
            if two_authors:
                author_2_is_in_list = False
                for i in range (len(self.author_list)):
                    if self.author_list[i].given_name != given_name_2 or self.author_list[i].surname != surname_2:
                        i += 1
                    else:
                        author_2_is_in_list = True
                        break
            
            if not author_is_in_list:
                new_author = Author(surname, given_name, birth_year, death_year, this_authors_books)
                self.author_list.append(new_author)
            
            if two_authors == True:
                if not author_2_is_in_list:
                    new_author_2 = Author(surname_2, given_name_2, birth_year_2, death_year_2, this_authors_books)
                    self.author_list.append(new_author_2)
            
            this_book_authors = []
            book_is_in_list = False

            for i in range (len(self.book_list)):
                if self.book_list[i].title != title:
                    i += 1
                else:
                    book_is_in_list = True
                    break
                
            if not book_is_in_list:
                this_book_authors.append(new_author)
                if two_authors:
                    this_book_authors.append(new_author_2)
                    new_book = Book(title, publication_year, this_book_authors)
                    this_authors_books.append(new_book)
                    this_authors_2_books.append(new_book)
                    self.book_list.append(new_book)
                else:
                    new_book = Book(title, publication_year, this_book_authors)
                    this_authors_books.append(new_book)
                    self.book_list.append(new_book)  
            
        print(len(self.author_list))
        print(len(self.book_list))
        pass


    def authors(self, search_text=None):
        ''' Returns a list of all the Author objects in this data source whose names contain
            (case-insensitively) the search text. If search_text is None, then this method
            returns all of the Author objects. In either case, the returned list is sorted
            by surname, breaking ties using given name (e.g. Ann Brontë comes before Charlotte Brontë).
        '''
        return []

    def books(self, search_text=None, sort_by='title'):
        ''' Returns a list of all the Book objects in this data source whose
            titles contain (case-insensitively) search_text. If search_text is None,
            then this method returns all of the books objects.
            The list of books is sorted in an order depending on the sort_by parameter:
                'year' -- sorts by publication_year, breaking ties with (case-insenstive) title
                'title' -- sorts by (case-insensitive) title, breaking ties with publication_year
                default -- same as 'title' (that is, if sort_by is anything other than 'year'
                            or 'title', just do the same thing you would do for 'title')
        '''
        return []

    def books_between_years(self, start_year=None, end_year=None):
        ''' Returns a list of all the Book objects in this data source whose publication
            years are between start_year and end_year, inclusive. The list is sorted
            by publication year, breaking ties by title (e.g. Neverwhere 1996 should
            come before Thief of Time 1996).
            If start_year is None, then any book published before or during end_year
            should be included. If end_year is None, then any book published after or
            during start_year should be included. If both are None, then all books
            should be included.
        '''
        return []
def main():
    books_csv_file_name = "books2.csv"
    A = (BooksDataSource(books_csv_file_name))
    for i in A.book_list:
        print(i.title)
       

main()
     
       
