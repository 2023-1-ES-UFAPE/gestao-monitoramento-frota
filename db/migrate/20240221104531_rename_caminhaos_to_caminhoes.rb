class RenameCaminhaosToCaminhoes < ActiveRecord::Migration[7.0]
  def change
    rename_table :caminhaos, :caminhoes
  end
end
