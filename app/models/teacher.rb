class Teacher < ActiveRecord::Base
  # attr_accessible :title, :body
    attr_accessible :name, :work_number, :age
    has_many :klass_teachers
    has_many :klasses, :through=>:klass_teachers, :source=>:klass
end
