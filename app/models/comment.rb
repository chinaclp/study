class Comment < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :host_id, :host_type, :content, :user_id
  belongs_to :article
  belongs_to :topic
  belongs_to :user
end
