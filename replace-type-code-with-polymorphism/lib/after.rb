class Employee
  TYPE_TO_CLASS = {
    regular: 'Employee',
    manager: 'Manager',
    boss: 'Boss'
  }

  def initialize(type: :regular)
    @type = type
  end

  def base_salary
    500.0
  end

  def salary
    base_salary + bonus
  end

  def bonus
    0
  end

  def self.build(type: :regular)
    const_get(TYPE_TO_CLASS.fetch(type)).new
  end
end

class Manager < Employee
  def bonus
    800.0
  end
end

class Boss < Employee
  def bonus
    1500.0
  end
end
