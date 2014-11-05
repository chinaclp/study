class ChangekalssFIeldFOrusersTemplates < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.text :kalss
      t.rename :kalss, :klass
    end
  end
end
