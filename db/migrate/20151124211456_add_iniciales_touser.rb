class AddInicialesTouser < ActiveRecord::Migration
  def change
  	add_column :users, :iniciales, :string
  end
end
