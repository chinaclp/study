class Klassteacher < ActiveRecord::Base
  # attr_accessible :title, :body
    attr_accessible :klass_id, :teacher_id
    belongs_to :teacher
    belongs_to :klass
end
