# code here!

class School

  attr_accessor :roster



  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade]==nil
        @roster [grade]= []
        @roster[grade] << name
    else
      @roster[grade] << name
    end

  end

#call the values for the given grade in the roster hash
  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |key, value|
      @roster[key] = value.sort
    end
  end
end
