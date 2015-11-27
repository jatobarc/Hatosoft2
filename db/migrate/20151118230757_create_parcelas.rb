class CreateParcelas < ActiveRecord::Migration
  def change
    create_table :parcelas do |t|
      t.integer :codigo
      t.integer :area
      t.string :tipo_pasto

      t.timestamps null: false
    end
  end
end
