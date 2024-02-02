class CreateRota < ActiveRecord::Migration[7.0]
  def change
    create_table :rota do |t|
      t.string :ponto_de_partida
      t.string :ponto_de_chegada
      t.datetime :data_de_partida
      t.datetime :data_de_chegada
      t.string :observacoes
      t.references :caminhao, null: false, foreign_key: true

      t.timestamps
    end
  end
end
