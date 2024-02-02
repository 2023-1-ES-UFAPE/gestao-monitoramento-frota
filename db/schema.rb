# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_02_02_161532) do
  create_table "caminhaos", force: :cascade do |t|
    t.string "modelo"
    t.string "placa"
    t.integer "ano"
    t.float "capacidade"
    t.string "status"
    t.string "chassi"
    t.datetime "data_ultima_inspecao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enderecos", force: :cascade do |t|
    t.string "cidade"
    t.integer "cep"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "paradas", force: :cascade do |t|
    t.datetime "data_parada"
    t.integer "rota_id", null: false
    t.integer "endereco_id", null: false
    t.integer "caminhao_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["caminhao_id"], name: "index_paradas_on_caminhao_id"
    t.index ["endereco_id"], name: "index_paradas_on_endereco_id"
    t.index ["rota_id"], name: "index_paradas_on_rota_id"
  end

  create_table "rota", force: :cascade do |t|
    t.string "ponto_de_partida"
    t.string "ponto_de_chegada"
    t.datetime "data_de_partida"
    t.datetime "data_de_chegada"
    t.string "observacoes"
    t.integer "caminhao_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["caminhao_id"], name: "index_rota_on_caminhao_id"
  end

  add_foreign_key "paradas", "caminhaos"
  add_foreign_key "paradas", "enderecos"
  add_foreign_key "paradas", "rota", column: "rota_id"
  add_foreign_key "rota", "caminhaos"
end
