class ChangeCommentHostTipe < ActiveRecord::Migration
  def change
    rename_column :comments, :host_tipe, :host_type
  end
end
