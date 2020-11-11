class Employee
  def initialize(type: :regular)
    @type = type
  end

  def base_salary
    500.0
  end

  def salary
    base_salary + bonus
  end

  def self.build(type: :regular)
    new type: type
  end
end

class Boss < Employee
  def bonus
    1500.0
  end
end
