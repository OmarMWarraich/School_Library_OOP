class Student < Person
  def initialize(age, parent_permission: true, classroom: 'TBA')
    super(age, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
