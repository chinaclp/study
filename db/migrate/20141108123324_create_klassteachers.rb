class CreateKlassteachers < ActiveRecord::Migration
  def change
    create_table :klassteachers do |t|

      t.integer :klass_id
      t.integer :teacher_id
      t.timestamps
    end
  end
end
