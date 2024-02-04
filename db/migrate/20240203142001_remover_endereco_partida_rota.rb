class RemoverEnderecoPartidaRota < ActiveRecord::Migration[7.0]
  def change
    remove_column :rota, :endereco_partida
    remove_column :rota, :endereco_chegada
  end
end
