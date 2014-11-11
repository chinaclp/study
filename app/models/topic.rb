class Topic < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :title, :content
  has_many :comments, :as => :host, :dependent => :destroy
end
