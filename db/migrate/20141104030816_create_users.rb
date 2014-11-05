class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      
      t.timestamps
      t.string :name
      t.integer :kalss_id
    end
  end
end
