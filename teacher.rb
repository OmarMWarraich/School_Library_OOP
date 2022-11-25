class Teacher < Person
  def initialize(age, specialization: 'TBA', parent_permission: true)
    super(age, parent_permission)
    @specialization = specialization
  end

  # Override can_use_services? method

  def can_use_services?
    true
  end
end
