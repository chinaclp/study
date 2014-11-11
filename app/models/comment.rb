class Comment < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :host_id, :host_type, :content
  belongs_to :article
  belongs_to :topic
end
