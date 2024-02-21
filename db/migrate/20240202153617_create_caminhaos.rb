class CreateCaminhaos < ActiveRecord::Migration[7.0]
  def change
    create_table :caminhoes do |t|
      t.string :modelo
      t.string :placa
      t.integer :ano
      t.float :capacidade
      t.string :status
      t.string :chassi
      t.datetime :data_ultima_inspecao

      t.timestamps
    end
  end
end
