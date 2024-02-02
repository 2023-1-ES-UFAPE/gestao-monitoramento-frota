require "test_helper"

class ParadasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parada = paradas(:one)
  end

  test "should get index" do
    get paradas_url
    assert_response :success
  end

  test "should get new" do
    get new_parada_url
    assert_response :success
  end

  test "should create parada" do
    assert_difference("Parada.count") do
      post paradas_url, params: { parada: { caminhao_id: @parada.caminhao_id, data_parada: @parada.data_parada, endereco_id: @parada.endereco_id, rota_id: @parada.rota_id } }
    end

    assert_redirected_to parada_url(Parada.last)
  end

  test "should show parada" do
    get parada_url(@parada)
    assert_response :success
  end

  test "should get edit" do
    get edit_parada_url(@parada)
    assert_response :success
  end

  test "should update parada" do
    patch parada_url(@parada), params: { parada: { caminhao_id: @parada.caminhao_id, data_parada: @parada.data_parada, endereco_id: @parada.endereco_id, rota_id: @parada.rota_id } }
    assert_redirected_to parada_url(@parada)
  end

  test "should destroy parada" do
    assert_difference("Parada.count", -1) do
      delete parada_url(@parada)
    end

    assert_redirected_to paradas_url
  end
end
