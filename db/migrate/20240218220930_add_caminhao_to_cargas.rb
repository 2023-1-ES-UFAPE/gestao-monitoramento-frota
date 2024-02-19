class AddCaminhaoToCargas < ActiveRecord::Migration[7.0]
  def change
    add_reference :cargas, :caminhao, null: false, foreign_key: true
  end
end
