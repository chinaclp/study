class Teacher < ActiveRecord::Base
  # attr_accessible :title, :body
    attr_accessible :name, :work_number, :age
    has_many :klassteachers
    has_many :klasses, :through=>:klassteachers, :source=>:klass
end
