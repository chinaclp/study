class Topic < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :title, :content, :user_id
  has_many :comments, :as => :host, :dependent => :destroy
end
