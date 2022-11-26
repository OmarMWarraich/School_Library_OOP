require_relative './base_decorator'

class TrimmerDecorator < BaseDecorator
  # Implement a method correct_name that makes sure that the output of the @nameable.correct_name
  # has a maximum of 10 characters and. If the name is longer than 10 characters, it should be trimmed.
  def correct_name
    super()
    @nameable.correct_name[0..9]
  end
end
