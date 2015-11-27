class CreateCalendarioNutriciones < ActiveRecord::Migration
  def change
    create_table :calendario_nutriciones do |t|
      t.integer :dia
      t.integer :kilogramos
      t.references :nutricion, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
