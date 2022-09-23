'''
Names: Khizar Qureshi & Kendra Winhall
'''
'''
   booksdatasourcetest.py
   Jeff Ondich, 24 September 2021
'''

from booksdatasource import Author, Book, BooksDataSource
import unittest

class BooksDataSourceTester(unittest.TestCase):
    def setUp(self):
        self.data_source = BooksDataSource('books1.csv')

    def tearDown(self):
        pass

    def test_unique_author(self):
        authors = self.data_source.authors('Pratchett')
        self.assertTrue(len(authors) == 1)
        self.assertTrue(authors[0] == Author('Pratchett', 'Terry'))

    def test_all_books(self):
        tiny_data_source = BooksDataSource('tinybooks.csv')
        books = tiny_data_source.books()
        self.assertTrue(len(books) == 3)
        self.assertTrue(books[0].title == 'Emma')
        self.assertTrue(books[1].title == 'Neverwhere')
        self.assertTrue(books[2].title == 'Omoo')
     
   def test_invalid_book_string(self):
      self.assertRaises(TypeError, self.data_source.books,?)
     
   def test_invalid_author_string(self):
      self.assertRaises(TypeError, self.data_source.authors,?)
     
   def test_invalid_years(self):
      self.assertRaises(TypeError, self.data_source.books_between_years,forty, two)
     
   def test_invalid_year_order(self):
      self.assertRaises(Error, self.data_source.books_between_years,1940,1840)
      
   def test_books_between_years(self):
      tiny_data_source = BookDataSource('tinybooks.csv')
      books = tiny_data_source.books()
      self.assertTrue(books[0].year < books[-1].year)
                                        
if __name__ == '__main__':
    unittest.main()

