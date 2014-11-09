class DeleteTeacherklass < ActiveRecord::Migration
  def change
    drop_table :klassteachers
  end
end
