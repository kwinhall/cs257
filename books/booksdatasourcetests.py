'''
   Names: Khizar Qureshi & Kendra Winhall
   booksdatasourcetests.py
   modified from Jeff Ondich, 24 September 2021
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
      self.assertRaises(TypeError, self.data_source.books(1))
     
   def test_invalid_author_string(self):
      self.assertRaises(TypeError, self.data_source.authors(1))
     
   def test_invalid_years(self):
      self.assertRaises(TypeError, self.data_source.books_between_years('forty', 'two'))
     
   def test_invalid_year_order(self):
      self.assertRaises(ValueError, self.data_source.books_between_years, 1940, 1840)
      
   def test_books_between_years(self):
      tiny_data_source = BooksDataSource('tinybooks.csv')
      books = tiny_data_source.books_between_years()
      self.assertTrue(books[0].publication_year < books[1].publication_year)
      self.assertEquals(len(books), 3)
      
   def test_books_case_sensitive(self):
      tiny_data_source = BooksDataSource('tinybooks.csv')
      books = tiny_data_source.books()
      self.assertEqual(books[0].title.upper(), books[0].title.lower())
      
   def test_author_case_sensitive(self):
      authors = self.data_source.authors()
      self.assertEqual(authors[0].surname.upper(), authors[0].surname.lower())
      self.assertEqual(authors[0].given_name.upper(), authors[0].given_name.lower())
      
   def test_start_year_none(self):
      tiny_data_source = BooksDataSource('tinybooks.csv')
      books = tiny_data_source.books_between_years(self, None, 1847)
      self.assertTrue(books[0].publication_year <= 1847 and books[1].publication_year <= 1847)
    
   def test_end_year_none(self):
      tiny_data_source = BooksDataSource('tinybooks.csv')
      books = tiny_data_source.books_between_years(self, 1847, None)
      self.assertTrue(books[0].publication_year >= 1847 and books[1].publication_year >= 1847)
      
   def test_books_sort_by_title(self):
      tiny_data_source = BooksDataSource('tinybooks.csv')
      books = tiny_data_source.books(self, None, 'title')
      self.assertTrue(books[0].title == 'Emma')
      self.assertTrue(books[1].title == 'Neverwhere')
      self.assertTrue(books[2].title == 'Omoo')
     
   def test_books_sort_by_year(self):
      tiny_data_source = BooksDataSource('tinybooks.csv')
      books = tiny_data_source.books(self, None, 'year')
      self.assertTrue(books[0].title == 'Emma')
      self.assertTrue(books[1].title == 'Omoo')
      self.assertTrue(books[2].title == 'Neverwhere')         
      
   def test_books_search(self):
      tiny_data_source = BooksDataSource('tinybooks.csv')
      books = tiny_data_source.books(self, 'e')
      self.assertEquals(len(books), 2)
      self.assertTrue(books[0].title == 'Emma')
      self.assertTrue(books[1].title == 'Neverwhere')
      
   def test_authors_search(self):
      tiny_data_source = BooksDataSource('tinybooks.csv')
      authors = tiny_data_source.authors(self, 'l')
      self.assertEquals(len(authors), 2)
      self.assertTrue(authors[0] == Author('Gaiman', 'Neil'))
      self.assertTrue(authors[1] == Author('Melville', 'Herman'))
       
                                        
if __name__ == '__main__':
    unittest.main()
