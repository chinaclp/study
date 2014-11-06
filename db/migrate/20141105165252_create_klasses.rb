class CreateKlasses < ActiveRecord::Migration
  def change
    create_table :klasses do |t|

      t.timestamps
      t.text :klass_name
    end
  end
end
