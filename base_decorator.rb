require_relative './nameable'

class Person < Nameable
  #  In the constructor name a parameter nameable and set it to an instance variable @nameable.

  def initialize(nameable)
    super(correct_name: nameable)
    @nameable = nameable
  end

  # Implement the correct_name method that returns the result of the correct_name method of the @nameable.

  def correct_name
    @nameable.correct_name
  end
end
