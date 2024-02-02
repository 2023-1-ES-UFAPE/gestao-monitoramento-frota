class CreateEnderecos < ActiveRecord::Migration[7.0]
  def change
    create_table :enderecos do |t|
      t.string :cidade
      t.integer :cep

      t.timestamps
    end
  end
end
