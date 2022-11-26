require_relative './nameable'
require_relative './capitalize_decorator'
require_relative './trimmer_decorator'
require_relative './base_decorator'

class Person < Nameable
  def initialize(age, name = 'unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def correct_name
    @name
  end

  # Getters

  attr_accessor :name, :age
  attr_reader :id, :rentals

  # Setters

  attr_writer :parent_permission

  # Private methods

  private

  def of_age?
    @age >= 18
  end

  # Public methods

  public

  def can_use_services?
    if is_of_age? || @parent_permission
      true
    else
      false
    end
  end

  def add_rental(_rental)
    Rental.new(date, self, person)
  end
end

# testing

person = Person.new(22, 'maximilianus')
puts person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name
trimmed_person = TrimmerDecorator.new(person)
puts trimmed_person.correct_name
