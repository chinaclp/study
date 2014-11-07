class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|

      t.timestamps
      t.string :work_number
      t.integer :age
      t.string :name
      t.integer :grade_id
    end
  end
end
