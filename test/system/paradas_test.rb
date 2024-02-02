require "application_system_test_case"

class ParadasTest < ApplicationSystemTestCase
  setup do
    @parada = paradas(:one)
  end

  test "visiting the index" do
    visit paradas_url
    assert_selector "h1", text: "Paradas"
  end

  test "should create parada" do
    visit paradas_url
    click_on "New parada"

    fill_in "Caminhao", with: @parada.caminhao_id
    fill_in "Data parada", with: @parada.data_parada
    fill_in "Endereco", with: @parada.endereco_id
    fill_in "Rota", with: @parada.rota_id
    click_on "Create Parada"

    assert_text "Parada was successfully created"
    click_on "Back"
  end

  test "should update Parada" do
    visit parada_url(@parada)
    click_on "Edit this parada", match: :first

    fill_in "Caminhao", with: @parada.caminhao_id
    fill_in "Data parada", with: @parada.data_parada
    fill_in "Endereco", with: @parada.endereco_id
    fill_in "Rota", with: @parada.rota_id
    click_on "Update Parada"

    assert_text "Parada was successfully updated"
    click_on "Back"
  end

  test "should destroy Parada" do
    visit parada_url(@parada)
    click_on "Destroy this parada", match: :first

    assert_text "Parada was successfully destroyed"
  end
end
