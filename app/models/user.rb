class User < ActiveRecord::Base
  # attr_accessible :title, :body
    attr_accessible :name, :klass
    belongs_to:klass
end
