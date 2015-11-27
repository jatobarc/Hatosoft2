class AddPadreToParto < ActiveRecord::Migration
  def change
    add_column :partos, :padre_id, :integer
  end
end
