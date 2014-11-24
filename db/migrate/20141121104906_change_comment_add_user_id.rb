class ChangeCommentAddUserId < ActiveRecord::Migration
  def change
    rename_column :comments, :user_name, :user_id
  end
end
