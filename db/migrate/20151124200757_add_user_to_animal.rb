class AddUserToAnimal < ActiveRecord::Migration
  def change
    add_reference :animales, :user, index: true, foreign_key: true
  end
end
