require 'test_helper'

class CargaTest < ActiveSupport::TestCase
  test "salvar carga corretamente" do
    # Criação de uma rota válida
    caminhao = Caminhao.new(modelo: "teste caminhao", placa: "ABCD123EF038", ano: 2020, capacidade: 50.0, chassi: "teste", data_ultima_inspecao: Date.yesterday)
    caminhao.save
    endereco = Endereco.new(cidade: "garanhuns", cep: 55293050)
    endereco.save
    endereco2 = Endereco.new(cidade: "recife", cep: 55000000)
    endereco2.save
    rota = Rotum.new(endereco_partida_id: endereco.id, endereco_chegada_id: endereco2.id, data_de_partida: Date.current, observacoes: "rota teste", caminhao_id: caminhao.id)
    assert(rota.save)
    # Criação de uma carga válida
    carga = Carga.new(descricao: "Carga correta", peso: 100, volume: 2, valor: 500, numero_rastreamento: "ABC123", rota_id: rota.id)
    assert carga.save
  end

  test "salvar carga com rota_id invalido" do
    carga = Carga.new(descricao: "Carga com rota_id invalido", peso: 100, volume: 2, valor: 500, numero_rastreamento: "ABC123", rota_id: nil)
    assert_not carga.save
  end

  test "salvar carga com volume invalido" do
    # Criação de uma rota válida
    caminhao = Caminhao.new(modelo: "teste caminhao", placa: "ABCD123EF038", ano: 2020, capacidade: 50.0, chassi: "teste", data_ultima_inspecao: Date.yesterday)
    caminhao.save
    endereco = Endereco.new(cidade: "garanhuns", cep: 55293050)
    endereco.save
    endereco2 = Endereco.new(cidade: "recife", cep: 55000000)
    endereco2.save
    rota = Rotum.new(endereco_partida_id: endereco.id, endereco_chegada_id: endereco2.id, data_de_partida: Date.current, observacoes: "rota teste", caminhao_id: caminhao.id)
    assert(rota.save)
    # Criação de uma carga com volume inválida
    carga = Carga.new(descricao: "Carga com volume invalido", peso: 100, volume: 0, valor: 500, numero_rastreamento: "ABC123", rota_id: 1)
    assert_not carga.save
  end
end
