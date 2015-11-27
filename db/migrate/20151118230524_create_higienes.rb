class CreateHigienes < ActiveRecord::Migration
  def change
    create_table :higienes do |t|
      t.date :fecha
      t.integer :codigo
      t.string :elemento
      t.string :material
      t.string :sustancia_aseo
      t.string :sustancia_desinfectante
      t.string :uso
      t.string :dosis
      t.string :higiene_manana
      t.string :higiene_tarde

      t.timestamps null: false
    end
  end
end
