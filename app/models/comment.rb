class Comment < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :host_id, :host_type, :content, :user_id
  belongs_to :user
  belongs_to :host, polymorphic: true

  def self.list

  end
  
 # def user
 #   User.find_by_id(user_id)
 # end

  def username
    self.user.name
  end

 # def host
  #  case host_type
  #  when "Article"
  #    return Article.find_by_id(host_id)
  #  when "Topic"
  #    return Topic.find_by_id(host_id)
  #  end
 # end

end

