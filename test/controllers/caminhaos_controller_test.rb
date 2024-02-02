require "test_helper"

class CaminhaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @caminhao = caminhaos(:one)
  end

  test "should get index" do
    get caminhaos_url
    assert_response :success
  end

  test "should get new" do
    get new_caminhao_url
    assert_response :success
  end

  test "should create caminhao" do
    assert_difference("Caminhao.count") do
      post caminhaos_url, params: { caminhao: { ano: @caminhao.ano, capacidade: @caminhao.capacidade, chassi: @caminhao.chassi, data_ultima_inspecao: @caminhao.data_ultima_inspecao, modelo: @caminhao.modelo, placa: @caminhao.placa, status: @caminhao.status } }
    end

    assert_redirected_to caminhao_url(Caminhao.last)
  end

  test "should show caminhao" do
    get caminhao_url(@caminhao)
    assert_response :success
  end

  test "should get edit" do
    get edit_caminhao_url(@caminhao)
    assert_response :success
  end

  test "should update caminhao" do
    patch caminhao_url(@caminhao), params: { caminhao: { ano: @caminhao.ano, capacidade: @caminhao.capacidade, chassi: @caminhao.chassi, data_ultima_inspecao: @caminhao.data_ultima_inspecao, modelo: @caminhao.modelo, placa: @caminhao.placa, status: @caminhao.status } }
    assert_redirected_to caminhao_url(@caminhao)
  end

  test "should destroy caminhao" do
    assert_difference("Caminhao.count", -1) do
      delete caminhao_url(@caminhao)
    end

    assert_redirected_to caminhaos_url
  end
end
