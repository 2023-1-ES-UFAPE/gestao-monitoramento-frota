class AdicionarChavesEstrangeiras < ActiveRecord::Migration[7.0]
  def change
    #add_reference :rota, :endereco_partida, foreign_key: { to_table: :enderecos }, index: true
    #add_reference :rota, :endereco_chegada, foreign_key: { to_table: :enderecos }, index: true
  end
end
