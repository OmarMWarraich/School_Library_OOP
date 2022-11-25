class Person
  def initialize(age, parent_permission: true, name: 'unknown')
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
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
