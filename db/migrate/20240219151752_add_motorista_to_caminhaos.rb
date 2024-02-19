class AddMotoristaToCaminhaos < ActiveRecord::Migration[7.0]
  def change
    add_reference :caminhaos, :motorista, foreign_key: true
  end
end
