class Article < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :title, :catalog_id, :summary, :content, :user_id
  has_many :comments, :as => :host, :dependent => :destroy
  belongs_to :user

  def comments_number
    self.comments.count
  end

end
