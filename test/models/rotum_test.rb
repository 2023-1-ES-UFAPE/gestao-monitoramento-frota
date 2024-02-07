require "test_helper"

class RotumTest < ActiveSupport::TestCase
  test "salvar rota sem endereco chegada" do
    caminhao = Caminhao.new(modelo: "teste caminhao", placa: "ABCD123EF038", ano: 2020, capacidade: 50.0, chassi: "teste", data_ultima_inspecao: Date.yesterday)
    caminhao.save
    endereco = Endereco.new(cidade: "garanhuns", cep: 55293050)
    endereco.save

    rota = Rotum.new(endereco_partida_id: endereco.id, data_de_partida: Date.yesterday, observacoes: "rota teste", caminhao_id: caminhao.id)
    assert_not(rota.save)
  end

  test "salvar rota data de chegada invalida" do
    caminhao = Caminhao.new(modelo: "teste caminhao", placa: "ABCD123EF038", ano: 2020, capacidade: 50.0, chassi: "teste", data_ultima_inspecao: Date.yesterday)
    caminhao.save
    endereco = Endereco.new(cidade: "garanhuns", cep: 55293050)
    endereco.save
    endereco2 = Endereco.new(cidade: "recife", cep: 55000000)
    endereco2.save

    rota = Rotum.new(endereco_partida_id: endereco.id, endereco_chegada_id: endereco2.id, data_de_partida: Date.today, data_de_chegada: Date.yesterday, observacoes: "rota teste", caminhao_id: caminhao.id)
    assert_not(rota.save)
  end

  test "salvar rota" do
    caminhao = Caminhao.new(modelo: "teste caminhao", placa: "ABCD123EF038", ano: 2020, capacidade: 50.0, chassi: "teste", data_ultima_inspecao: Date.yesterday)
    caminhao.save
    endereco = Endereco.new(cidade: "garanhuns", cep: 55293050)
    endereco.save
    endereco2 = Endereco.new(cidade: "recife", cep: 55000000)
    endereco2.save

    rota = Rotum.new(endereco_partida_id: endereco.id, endereco_chegada_id: endereco2.id, data_de_partida: Date.today, observacoes: "rota teste", caminhao_id: caminhao.id)
    assert(rota.save)
  end
end
