class CreateNutriciones < ActiveRecord::Migration
  def change
    create_table :nutriciones do |t|
      t.references :animal, index: true, foreign_key: true
      t.date :mes_nutricion

      t.timestamps null: false
    end
  end
end
