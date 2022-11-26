require_relative './nameable'

class Person < Nameable
  def initialize(age, parent_permission: true, name: 'unknown')
    super(correct_name: name)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission

    # Implement the correct_name method that returns the result of the correct_name method of the @nameable.

    # def correct_name
    #   raise NotImplementedError, 'Please implement the correct_name method'
    # end
  end

  # Getters

  attr_accessor :@name, :@age
  attr_reader :@id

  # Setters

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
end
