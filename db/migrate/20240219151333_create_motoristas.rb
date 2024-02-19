class CreateMotoristas < ActiveRecord::Migration[7.0]
  def change
    create_table :motoristas do |t|
      t.string :nome
      t.integer :cpf
      t.integer :cnh
      t.integer :telefone
      t.date :data_nascimento
      t.references :caminhao, null: false, foreign_key: true

      t.timestamps
    end
  end
end
