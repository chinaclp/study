class KlassTeacher < ActiveRecord::Base
  # attr_accessible :title, :body
    attr_accessible :teacher_id, :klass_id
    belongs_to :teacher
    belongs_to :klass
end
