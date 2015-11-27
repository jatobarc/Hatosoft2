class CreateProducciones < ActiveRecord::Migration
  def change
    create_table :producciones do |t|
      t.references :animal, index: true, foreign_key: true
      #t.date :mes_produccion
      t.date :dia_produccion
      t.decimal :cantidad_manana
      t.decimal :cantidad_tarde

      t.timestamps null: false
    end
  end
end
