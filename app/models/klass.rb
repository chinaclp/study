class Klass < ActiveRecord::Base
  # attr_accessible :title, :body
    has_many:users, :dependent=>:destroy
    attr_accessible :klass_name
    has_many :klassteachers
    has_many :teachers, :through=>:klassteachers, :source=>:teacher
end
