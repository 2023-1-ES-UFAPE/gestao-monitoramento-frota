require "application_system_test_case"

class MotoristasTest < ApplicationSystemTestCase
  setup do
    @motorista = motoristas(:one)
  end

  test "visiting the index" do
    visit motoristas_url
    assert_selector "h1", text: "Motoristas"
  end

  test "should create motorista" do
    visit motoristas_url
    click_on "New motorista"

    fill_in "Cnh", with: @motorista.cnh
    fill_in "Cpf", with: @motorista.cpf
    fill_in "Data nascimento", with: @motorista.data_nascimento
    fill_in "Nome", with: @motorista.nome
    fill_in "Telefone", with: @motorista.telefone
    click_on "Create Motorista"

    assert_text "Motorista was successfully created"
    click_on "Back"
  end

  test "should update Motorista" do
    visit motorista_url(@motorista)
    click_on "Edit this motorista", match: :first

    fill_in "Cnh", with: @motorista.cnh
    fill_in "Cpf", with: @motorista.cpf
    fill_in "Data nascimento", with: @motorista.data_nascimento
    fill_in "Nome", with: @motorista.nome
    fill_in "Telefone", with: @motorista.telefone
    click_on "Update Motorista"

    assert_text "Motorista was successfully updated"
    click_on "Back"
  end

  test "should destroy Motorista" do
    visit motorista_url(@motorista)
    click_on "Destroy this motorista", match: :first

    assert_text "Motorista was successfully destroyed"
  end
end
