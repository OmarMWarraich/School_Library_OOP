require_relative './base_decorator'

class CapitalizeDecorator < BaseDecorator
  # Implement the correct_name method that returns the result of the correct_name method of the @nameable.
  # The result should be capitalized.
  def correct_name
    super()
    @nameable.correct_name.capitalize
  end
end
