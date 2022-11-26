# In your main.rb define the entry point, this will be a method called
# main that is invoked at the end of your file. This method should do the following:
#
# Present the user with a list of options to perform.
# Lets users choose an option.
# If needed, ask for parameters for the option.
# Have a way to quit the app.
#

require_relative './app'

def app_options
  puts 'Welcome to School Library App!'
  puts

  option = nil
  while option != '5'
    puts 'Please choose an option by entering a number:'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Exit'
    option = gets.chomp
  end
end

def check(response)
  case response
  when '1'
    app.list_books
  when '2'
    app.list_people
  when '3'
    app.create_person
  when '4'
    app.create_book
  when '5'
    puts 'Thank you for using this app!'
  else
    puts 'That is not a valid option'
  end
  puts
end

def main
  app_options
  check(response)
end

main
