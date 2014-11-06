class Klass < ActiveRecord::Base
  # attr_accessible :title, :body
    has_many:users, :dependent=>:destroy
    attr_accessible :klass_name
end
