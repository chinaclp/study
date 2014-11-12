class Student < ActiveRecord::Base
  # attr_accessible :title, :body
    attr_accessible :name, :klass,:klass_id
    belongs_to :klass
end
