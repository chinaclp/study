class Klass < ActiveRecord::Base
  # attr_accessible :title, :body
    has_many:users, :dependent=>:destroy
    attr_accessible :klass_name
    has_many :klass_teachers
    has_many :teachers, :through=>:klass_teachers, :source=>:teacher
end
