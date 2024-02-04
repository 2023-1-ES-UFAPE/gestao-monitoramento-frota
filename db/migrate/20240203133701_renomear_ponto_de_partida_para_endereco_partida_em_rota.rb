class RenomearPontoDePartidaParaEnderecoPartidaEmRota < ActiveRecord::Migration[7.0]
  def change
    rename_column :rota, :ponto_de_partida, :endereco_partida
    rename_column :rota, :ponto_de_chegada, :endereco_chegada
  end
end
