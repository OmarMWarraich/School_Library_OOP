# Create a app.rb file that will serve as your console app entry-point.
# It should have methods that do the following:
#
# List all books.
# List all people.
# Create a person (teacher or student, not a plain Person).
# Create a book.
# Create a rental.
# List all rentals for a given person id.
#

require_relative './book'
require_relative './teacher'
require_relative './student'
require_relative './rental'

class App
  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  def list_books
    @books.each { |book| puts book }
    puts "Title: #{book.title}, Author: #{book.author}"
  end

  def list_people
    @people.each { |person| puts person }
    puts "[#{person.class}] Name: #{person.name}, Age: #{person.age}, ID: #{person.id}"
  end

  def create_person
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    person_type = gets.chomp

    case person_type
    when '1'
      create_student
    when '2'
      create_teacher
    else
      puts 'Invalid option'
    end
  end

  def create_book
    print 'Title: '
    title = gets.chomp

    print 'Author: '
    author = gets.chomp

    @books << Book.new(title, author)
    puts 'Book created successfully'
  end

  def create_rental
    puts 'Select a book from the following list by number'
    @books.each_with_index { |book, index| puts "#{index}) #{book}" }

    book_index = gets.chomp.to_i

    puts

    puts 'Select a person from the following list by number (not id)'
    @people.each_with_index { |person, index| puts "#{index}) #{person}" }

    person_index = gets.chomp.to_i

    puts

    print 'Date: '
    date = gets.chomp

    @rentals << Rental.new(date, @books[book_index], @people[person_index])
    puts 'Rental created successfully'
  end

  def list_rentals_for_person_id
    print 'ID of person: '
    id = gets.chomp.to_i

    puts 'Rentals:'

    @rentals.each do |rental|
      puts rental if rental.person.id == id
    end
  end

  private

  def create_student
    print 'Age: '
    age = gets.chomp

    print 'Name: '
    name = gets.chomp

    print 'Has parent permission? [Y/N]: '
    parent_permission = gets.chomp.downcase == 'y'

    student = Student.new(age, name, parent_permission)
    @people << student
    puts 'Person created successfully'
  end

  def create_teacher
    print 'Age: '
    age = gets.chomp

    print 'Name: '
    name = gets.chomp

    print 'Specialization: '
    specialization = gets.chomp

    teacher = Teacher.new(age, specialization, name)
    @people << teacher
    puts 'Person created successfully'
  end
end
