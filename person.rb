class Person
  attr_reader :name, :books
  def initialize(name)
    @name = name
    @books = {}
  end
  def pretty_string
    "'#{@name}' has #{@books.size} books borrowed at the moment."
  end
  def borrow(book) #Adding book to the person's hash (so, for the persons books, put in book.title)
    @books[book.title] = book
  end

  def return_book(book_title)
    book = @books.delete(book_title)
  end

  def list_current_books
    @books.
  end

end
end