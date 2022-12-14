# Create the many-to-many (also has-many-through) relationship between Person
# and Book using the intermediate class Rental. The following should be implemented:
#
# Create the has-many side of Book and Rental (a book has many rentals).
# Create the belongs-to side of Rental and Book (a rental belongs to a book).
# Create the has-many side of Person and Rental (a person has many rentals).
# Create the belongs-to side of Rental and Person (a rental belongs to a person).
# Modify the constructor of Rental so Book and Person are set in it.

require_relative './person'

class Rental
  attr_accessor :date
  attr_reader :book, :person

  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person
    book.add_rental(self)
    person.add_rental(self)
  end
end
