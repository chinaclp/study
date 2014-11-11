class ChangeComment < ActiveRecord::Migration
  def change
    rename_column :comments, :article_id, :host_id
    add_column :comments, :host_tipe, :string
  end
end
