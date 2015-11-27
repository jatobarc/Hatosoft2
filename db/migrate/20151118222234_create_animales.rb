class CreateAnimales < ActiveRecord::Migration
  def change
    create_table :animales do |t|
      t.string :nombre
      t.string :codigo
      t.date :fecha_de_nacimiento
      t.string :raza
      t.string :genero

      t.timestamps null: false
    end
  end
end
