class Library
  attr_reader :name, :books, :people

  def initialize(name)
    @name = name
    @books = {}
    @people = {}
  end

  def add_book(book)
    @books[book.title] = book
  end

  def list_books
    if @books.empty?
      "There are no books in the library at present."
    else
      book_strings = @books.map do |key, book|
        book.pretty_string
      end
      book_strings.join("\n")
    end
  end

  def add_person(person)
    @people[person.name] = person
  end

  def list_people
    if @people.empty?
      "no people here"
    else 
      people_strings = @people.map do |key, person| 
        person.pretty_string
      end
      people_strings.join("\n")
    end
  end

 def lend(person_name, book_title)
  person = @people[person_name]
  book = @books.delete(book_title)
  person.borrow(book)
 end

 def return_book(person_name, book_title)
  person = @people[person_name]
  book = @people[person_name].books[book_title]
  person.return_book(book_title)
  self.add_book(book)
 end

 def list_borrowed_books()
  @people.map do |key, person|
      puts person.books unless person.books.empty?
  end
end

end