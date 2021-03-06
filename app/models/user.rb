class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable

  before_create :confrim
 
  def confrim
    self.confirmed_at = Time.now
  end

  has_many :articles
  has_many :topics
  has_many :comments

  def articles_number
    self.articles.count
  end

  def topics_number
    self.topics.count
  end

  mount_uploader :photo, PhotoUploader

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :photo
  # attr_accessible :title, :body
end
