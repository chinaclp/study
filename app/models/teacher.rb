class Teacher < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :name, :work_number, :age
  has_many :klass_teachers
  has_many :klasses, :through=>:klass_teachers, :source=>:klass

  def students
    students = Array.new
    self.klasses.each do |klass|           #self指当前对象
      klass.students.each do |student|
        students << student
      end 
    end
    return students
  end

  def studs
    self.klasses.map do |klass|
      klass.students.map do |student|
        student
      end
    end.flatten.uniq.compact
  end

end
