class CreatePartos < ActiveRecord::Migration
  def change
    create_table :partos do |t|
      t.references :animal, index: true, foreign_key: true
      t.date :fecha_parto #fecha de nacimiento denuevo animal
      t.string :codigo_nacido
      t.string :nombre 

      t.timestamps null: false
    end
  end
end
