class AddNombreToParto < ActiveRecord::Migration
  def change
    #add_column :partos, :nombre, :string
    add_column :partos, :raza, :string
    add_column :partos, :genero, :string
  end
end
