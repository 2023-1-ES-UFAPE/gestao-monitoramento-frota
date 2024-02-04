class RemoverEnderecoPartidaIdEAlterarTipoDeEnderecoPartida < ActiveRecord::Migration[7.0]
  def change
    remove_column :rota, :endereco_partida_id
    change_column :rota, :endereco_partida, :integer
    remove_column :rota, :endereco_chegada_id
    change_column :rota, :endereco_chegada, :integer
  end
end
