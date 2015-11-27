class CreateCalendarioProducciones < ActiveRecord::Migration
  def change
    create_table :calendario_producciones do |t|
      t.integer :dia
      t.integer :manana
      t.integer :tarde
      t.integer :finca
      t.references :produccion, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
