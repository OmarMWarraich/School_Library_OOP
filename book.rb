# Create a class Book with the following:
#
# @title and @author instance variables, should be initialized in the constructor.
# Setters and getters for instance variables (remember about attr_accessor).
#

class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def create_rental(person, date)
    Rental.new(date, self, person)
  end
end
