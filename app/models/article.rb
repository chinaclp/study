class Article < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :title, :catalog_id, :summary, :content
  has_many :comments, :as => :host, :dependent => :destroy
end
