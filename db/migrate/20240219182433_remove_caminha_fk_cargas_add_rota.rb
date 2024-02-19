class RemoveCaminhaFkCargasAddRota < ActiveRecord::Migration[7.0]
  def change
    remove_column :cargas, :caminhao_id
    add_reference :cargas, :rota, foreign_key: { to_table: :rota }, index: true
  end
end
