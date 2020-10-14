class Term
  attr_accessor :assiduity, :tet, :behavior

  def grade
    (@assiduity + @test + @behavior) / 3
  end

  def set_all_to(value)
    @assiduity, @test, @behavior = value, value, value
  end
end


class Student
  attr_reader :terms

  def initialize
    @terms = [
      Term.new,
      Term.new,
      Term.new
    ]
  end

  def set_all_grades_to grade
    @terms.each { |term| term.set_all_to(grade) }
  end

  def grade_for_term(index)
    @terms[index].grade
  end

  def first_term_grade
    terms[0].grade
  end

  def second_term_grade
    terms[1].grade
  end

  def third_term_grade
    terms[2].grade
  end
end
