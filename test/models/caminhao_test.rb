require "test_helper"

class CaminhaoTest < ActiveSupport::TestCase
  test "salvar caminhao placa invalido" do
    caminhao = Caminhao.new(modelo: "teste caminhao", placa: "0ABCD123EF038", ano: 2020, capacidade: 50.0, chassi: "teste", data_ultima_inspecao: Date.yesterday)
    assert_not(caminhao.save)
  end

  test "salvar caminhao " do
    caminhao = Caminhao.new(modelo: "teste caminhao", placa: "ABCD123EF038", ano: 2020, capacidade: 50.0, chassi: "teste", data_ultima_inspecao: Date.yesterday)
    assert(caminhao.save)
  end

  test "salvar caminhao sem ano" do
    caminhao = Caminhao.new(modelo: "teste caminhao", placa: "ABCD123EF038", capacidade: 50.0, chassi: "teste", data_ultima_inspecao: Date.yesterday)
    assert_not(caminhao.save)
  end
end