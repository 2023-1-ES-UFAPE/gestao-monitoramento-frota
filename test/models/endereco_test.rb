require "test_helper"

class EnderecoTest < ActiveSupport::TestCase
  test "salvar endereco cidade invalido" do
    endereco = Endereco.new(cidade: "abc", cep: 55293050)
    assert_not(endereco.save)
  end

  test "salvar endereco cidade" do
    endereco = Endereco.new(cidade: "garanhuns", cep: 55293050)
    assert(endereco.save)
  end

  test "salvar endereco cep invalido" do
    endereco = Endereco.new(cidade: "garanhuns", cep: 5)
    assert_not(endereco.save)
  end
end
