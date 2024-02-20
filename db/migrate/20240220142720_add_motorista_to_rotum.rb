class AddMotoristaToRotum < ActiveRecord::Migration[7.0]
  def change
    add_reference :rota, :motorista, null: false, foreign_key: true
  end
end
