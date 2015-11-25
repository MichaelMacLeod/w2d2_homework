require 'pry-byebug'
require_relative './library'
require_relative 'book'
require_relative 'person'

# #TO DO: # create library
library = Library.new 'Code Clan Library'
# create book
book_1 = Book.new({title: 'Errand', genre: 'Fantasy'})
library.add_book(book_1)
library.add_book(Book.new(title: "The Hobbit", genre: "Fantasy"))
library.add_book(Book.new(title: "Feersum Endjinn", genre: "Science Fiction"))
library.add_book(Book.new(title: "Histories", genre: "History"))
library.add_book(Book.new(title: "To Kill a Mockingbird", genre: "Fiction"))
library.add_book(Book.new(title: "A Brief History of Time", genre: "Non-Fiction"))


# list books
puts "All books #{library.list_books}"
# create person 
person_1 = Person.new("Jane")
library.add_person(person_1)
library.add_person(Person.new('Fred'))
library.add_person(Person.new('Wilma'))
library.add_person(Person.new('Barney'))
library.add_person(Person.new('Betty'))
# list of people
puts "All people #{library.list_people}"
# lend book (send it into the person's HASH)
person_name = "Wilma"
book_title = "The Hobbit"
library.lend(person_name, book_title)
# puts "All books #{library.list_books}"
# puts "All people #{library.list_people}"

# return book to library
library.return_book("Wilma", "The Hobbit")

# list borrowed books
library.list_borrowed_books
puts "These are the borrowed books: #{library.list_books}"

binding.pry;''