class CreateRegistroParcelas < ActiveRecord::Migration
  def change
    create_table :registro_parcelas do |t|
      t.references :parcela, index: true, foreign_key: true
      t.date :fecha_entrada
      t.date :fecha_salida
      t.date :fecha_proxima_parte
      t.integer :numero_de_vacas

      t.timestamps null: false
    end
  end
end
