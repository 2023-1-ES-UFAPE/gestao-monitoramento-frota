class CreateCargas < ActiveRecord::Migration[7.0]
  def change
    create_table :cargas do |t|
      t.string :descricao
      t.decimal :peso
      t.decimal :volume
      t.decimal :valor
      t.string :numero_rastreamento

      t.timestamps
    end
  end
end
