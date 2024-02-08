require "application_system_test_case"

class CaminhaosTest < ApplicationSystemTestCase
  setup do
    @caminhao = caminhaos(:one)
  end

  test "visiting the index" do
    visit caminhaos_url
    assert_selector "h1", text: "Caminhaos"
  end

  test "should create caminhao" do
    visit caminhaos_url
    click_on "New caminhao"

    fill_in "Ano", with: @caminhao.ano
    fill_in "Capacidade", with: @caminhao.capacidade
    fill_in "Chassi", with: @caminhao.chassi
    fill_in "Data ultima inspecao", with: @caminhao.data_ultima_inspecao
    fill_in "Modelo", with: @caminhao.modelo
    fill_in "Placa", with: @caminhao.placa
    fill_in "Status", with: @caminhao.status
    click_on "Create Caminhao"

    assert_text "Caminhao was successfully created"
    click_on "Back"
  end

  test "should update Caminhao" do
    visit caminhao_url(@caminhao)
    click_on "Edit this caminhao", match: :first

    fill_in "Ano", with: @caminhao.ano
    fill_in "Capacidade", with: @caminhao.capacidade
    fill_in "Chassi", with: @caminhao.chassi
    fill_in "Data ultima inspecao", with: @caminhao.data_ultima_inspecao
    fill_in "Modelo", with: @caminhao.modelo
    fill_in "Placa", with: @caminhao.placa
    fill_in "Status", with: @caminhao.status
    click_on "Update Caminhao"

    assert_text "Caminhao was successfully updated"
    click_on "Back"
  end

  test "should destroy Caminhao" do
    visit caminhao_url(@caminhao)
    click_on "Destroy this caminhao", match: :first

    assert_text "Caminhao was successfully destroyed"
  end
end
