require "application_system_test_case"

class RotaTest < ApplicationSystemTestCase
  setup do
    @rotum = rota(:one)
  end

  test "visiting the index" do
    visit rota_url
    assert_selector "h1", text: "Rota"
  end

  test "should create rotum" do
    visit rota_url
    click_on "New rotum"

    fill_in "Caminhao", with: @rotum.caminhao_id
    fill_in "Data de chegada", with: @rotum.data_de_chegada
    fill_in "Data de partida", with: @rotum.data_de_partida
    fill_in "Observacoes", with: @rotum.observacoes
    fill_in "Ponto de chegada", with: @rotum.ponto_de_chegada
    fill_in "Ponto de partida", with: @rotum.ponto_de_partida
    click_on "Create Rotum"

    assert_text "Rotum was successfully created"
    click_on "Back"
  end

  test "should update Rotum" do
    visit rotum_url(@rotum)
    click_on "Edit this rotum", match: :first

    fill_in "Caminhao", with: @rotum.caminhao_id
    fill_in "Data de chegada", with: @rotum.data_de_chegada
    fill_in "Data de partida", with: @rotum.data_de_partida
    fill_in "Observacoes", with: @rotum.observacoes
    fill_in "Ponto de chegada", with: @rotum.ponto_de_chegada
    fill_in "Ponto de partida", with: @rotum.ponto_de_partida
    click_on "Update Rotum"

    assert_text "Rotum was successfully updated"
    click_on "Back"
  end

  test "should destroy Rotum" do
    visit rotum_url(@rotum)
    click_on "Destroy this rotum", match: :first

    assert_text "Rotum was successfully destroyed"
  end
end
