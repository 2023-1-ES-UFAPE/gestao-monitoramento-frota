class CreateParadas < ActiveRecord::Migration[7.0]
  def change
    create_table :paradas do |t|
      t.datetime :data_parada
      t.references :rota, null: false, foreign_key: true
      t.references :endereco, null: false, foreign_key: true
      t.references :caminhao, null: false, foreign_key: true

      t.timestamps
    end
  end
end
