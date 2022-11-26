# Create the has-many/belongs-to relationship between Classroom and Student. The following should be implemented:
#     Create the has-many side (a classroom has many students).
#     Create the belongs-to side (a student belongs to a classroom).
#     Make sure that when adding a student to a classroom it also sets the classroom for the student.
#     Make sure that when setting the classroom for a student it also adds it to the classrooms' students.

class Student < Person
  attr_accessor :classroom

  def initialize(age, parent_permission: true, classroom: 'TBA')
    super(age, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
