require "test_helper"

class MotoristaTest < ActiveSupport::TestCase
  test "salvar motorista" do
    caminhao = caminhaos(:one)
    motorista = Motorista.new(nome:"Sergio", cpf:12345678910, cnh:12345678910, telefone:12345678910, data_nascimento: "01/01/1994", caminhao: caminhao)
    assert(motorista.save)
  end

  test "salvar motorista sem caminhao" do
    motorista = Motorista.new(nome:"Sergio", cpf:12345678910, cnh:12345678910, telefone:12345678910, data_nascimento: "01/01/1994")
    assert_not(motorista.save)
  end

  test "salvar motorista campos invalidos" do
    motorista = Motorista.new(nome:"a", cpf:1, cnh:1, telefone:1, data_nascimento: "01/01/2054", caminhao_id: 1)
    assert_not(motorista.save)
  end
end
