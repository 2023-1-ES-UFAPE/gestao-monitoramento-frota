require "test_helper"

class RotaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rotum = rota(:one)
  end

  test "should get index" do
    get rota_url
    assert_response :success
  end

  test "should get new" do
    get new_rotum_url
    assert_response :success
  end

  test "should create rotum" do
    assert_difference("Rotum.count") do
      post rota_url, params: { rotum: { caminhao_id: @rotum.caminhao_id, data_de_chegada: @rotum.data_de_chegada, data_de_partida: @rotum.data_de_partida, observacoes: @rotum.observacoes, endereco_chegada_id: @rotum.endereco_chegada_id, endereco_partida_id: @rotum.endereco_partida_id } }
    end

    assert_redirected_to rotum_url(Rotum.last)
  end

  test "should show rotum" do
    get rotum_url(@rotum)
    assert_response :success
  end

  test "should get edit" do
    get edit_rotum_url(@rotum)
    assert_response :success
  end

  test "should update rotum" do
    patch rotum_url(@rotum), params: { rotum: { caminhao_id: @rotum.caminhao_id, data_de_chegada: @rotum.data_de_chegada, data_de_partida: @rotum.data_de_partida, observacoes: @rotum.observacoes, endereco_chegada: @rotum.endereco_chegada_id, endereco_partida: @rotum.endereco_partida_id } }
    assert_redirected_to rotum_url(@rotum)
  end

  test "should destroy rotum" do
    assert_difference("Rotum.count", -1) do
      delete rotum_url(@rotum)
    end

    assert_redirected_to rota_url
  end
end
