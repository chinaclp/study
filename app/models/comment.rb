class Comment < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :host_id, :host_type, :content, :user_id
  belongs_to :article, polymorphic: true
  belongs_to :topic, polymorphic: true
  belongs_to :user

 # def host
  #  case host_type
  #  when "Article"
  #    return Article.find_by_id(host_id)
  #  when "Topic"
  #    return Topic.find_by_id(host_id)
  #  end
 # end

end

