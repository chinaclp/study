class CreateKlassTeachers < ActiveRecord::Migration
  def change
    create_table :klass_teachers do |t|

      t.integer :klass_id
      t.integer :teacher_id

      t.timestamps
    end
  end
end
