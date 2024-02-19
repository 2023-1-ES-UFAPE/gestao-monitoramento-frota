require "application_system_test_case"

class CargasTest < ApplicationSystemTestCase
  setup do
    @carga = cargas(:one)
  end

  test "visiting the index" do
    visit cargas_url
    assert_selector "h1", text: "Cargas"
  end

  test "should create carga" do
    visit cargas_url
    click_on "New carga"

    fill_in "Descricao", with: @carga.descricao
    fill_in "Numero rastreamento", with: @carga.numero_rastreamento
    fill_in "Peso", with: @carga.peso
    fill_in "Valor", with: @carga.valor
    fill_in "Volume", with: @carga.volume
    click_on "Create Carga"

    assert_text "Carga was successfully created"
    click_on "Back"
  end

  test "should update Carga" do
    visit carga_url(@carga)
    click_on "Edit this carga", match: :first

    fill_in "Descricao", with: @carga.descricao
    fill_in "Numero rastreamento", with: @carga.numero_rastreamento
    fill_in "Peso", with: @carga.peso
    fill_in "Valor", with: @carga.valor
    fill_in "Volume", with: @carga.volume
    click_on "Update Carga"

    assert_text "Carga was successfully updated"
    click_on "Back"
  end

  test "should destroy Carga" do
    visit carga_url(@carga)
    click_on "Destroy this carga", match: :first

    assert_text "Carga was successfully destroyed"
  end
end
