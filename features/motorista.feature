Feature: gerenciamento de motorista
  As a usuario do sistema gestao monitoramento de frota
  I want to cadastrar, editar e remover motorista de um caminhao de carga
  So that eu mantenha registro dos motoristas disponiveis

  Scenario: 'Adicionar Motorista'
    Given I am on caminhoes page
    When I follow the "New caminhao"
    Then I should be on new Caminhao page
    When I fill in "Modelo" with "Caminhao X"
    And I fill in "Placa" with "KMC-5805"
    And I fill in "Ano" with "2015"
    And I fill in "Capacidade" with "145"
    And I fill in "Status" with "Parado"
    And I fill in "Chassi" with "6Mb AZ4Vrv 4V Hz6335"
    And I fill in "Data ultima inspecao" with "02/11/2023"
    And I press "Create Caminhao"

    Given I am on the motoristas page
    When I follow "New motorista"
    Then I should be on the new Motorista page
    When I fill in "Nome" with "Sergio"
    And I fill in "Cpf" with "70894184059"
    And I fill in "Cnh" with "58120111491"
    And I fill in "Telefone" with "87980089009"
    And I fill in "Data nascimento" with "02/02/1994"
    And I select "KMC-5805" from "Caminhao"
    And I press "Create Motorista"
    Then I must be on the motorista page of "Sergio"
    And I should see "Sergio"

  Scenario: 'Deletar Motorista'
    Given I am on caminhoes page
    When I follow the "New caminhao"
    Then I should be on new Caminhao page
    When I fill in "Modelo" with "Caminhao X"
    And I fill in "Placa" with "KMC-5805"
    And I fill in "Ano" with "2015"
    And I fill in "Capacidade" with "145"
    And I fill in "Status" with "Parado"
    And I fill in "Chassi" with "6Mb AZ4Vrv 4V Hz6335"
    And I fill in "Data ultima inspecao" with "02/11/2023"
    And I press "Create Caminhao"

    Given I am on the motoristas page
    When I follow "New motorista"
    Then I should be on the new Motorista page
    When I fill in "Nome" with "Sergio"
    And I fill in "Cpf" with "70894184059"
    And I fill in "Cnh" with "58120111491"
    And I fill in "Telefone" with "87980089009"
    And I fill in "Data nascimento" with "02/02/1994"
    And I select "KMC-5805" from "Caminhao"
    And I press "Create Motorista"
    Then I must be on the motorista page of "Sergio"
    And I should see "Sergio"

    When I follow "Destroy this motorista"
    Then I am on the motoristas page
    And I should not see "Sergio"

  Scenario: 'Editar Motorista'
    Given I am on caminhoes page
    When I follow the "New caminhao"
    Then I should be on new Caminhao page
    When I fill in "Modelo" with "Caminhao X"
    And I fill in "Placa" with "KMC-5805"
    And I fill in "Ano" with "2015"
    And I fill in "Capacidade" with "145"
    And I fill in "Status" with "Parado"
    And I fill in "Chassi" with "6Mb AZ4Vrv 4V Hz6335"
    And I fill in "Data ultima inspecao" with "02/11/2023"
    And I press "Create Caminhao"

    Given I am on the motoristas page
    When I follow "New motorista"
    Then I should be on the new Motorista page
    When I fill in "Nome" with "Sergio"
    And I fill in "Cpf" with "70894184059"
    And I fill in "Cnh" with "58120111491"
    And I fill in "Telefone" with "87980089009"
    And I fill in "Data nascimento" with "02/02/1994"
    And I select "KMC-5805" from "Caminhao"
    And I press "Create Motorista"
    Then I must be on the motorista page of "Sergio"
    And I should see "Sergio"

    When I follow "Edit this motorista"
    Then I should be on the editar motorista page of "Sergio"
    When I fill in "Nome" with "Rodrigo"
    And I press "Update Motorista"
    Then I must be on the motorista page of "Rodrigo"
    And I should see "Rodrigo"

  Scenario: 'Adicionar Motorista sem caminhao'
    Given I am on the motoristas page
    When I follow "New motorista"
    Then I should be on the new Motorista page
    When I fill in "Nome" with "Sergio"
    And I fill in "Cpf" with "70894184059"
    And I fill in "Cnh" with "58120111491"
    And I fill in "Telefone" with "87980089009"
    And I fill in "Data nascimento" with "02/02/1994"
    And I press "Create Motorista"
    Then I must see "Caminhao must exist" error message

  Scenario: 'Editar Motorista com valor de cpf invalido'
    Given I am on caminhoes page
    When I follow the "New caminhao"
    Then I should be on new Caminhao page
    When I fill in "Modelo" with "Caminhao X"
    And I fill in "Placa" with "KMC-5805"
    And I fill in "Ano" with "2015"
    And I fill in "Capacidade" with "145"
    And I fill in "Status" with "Parado"
    And I fill in "Chassi" with "6Mb AZ4Vrv 4V Hz6335"
    And I fill in "Data ultima inspecao" with "02/11/2023"
    And I press "Create Caminhao"

    Given I am on the motoristas page
    When I follow "New motorista"
    Then I should be on the new Motorista page
    When I fill in "Nome" with "Sergio"
    And I fill in "Cpf" with "70894184059"
    And I fill in "Cnh" with "58120111491"
    And I fill in "Telefone" with "87980089009"
    And I fill in "Data nascimento" with "02/02/1994"
    And I select "KMC-5805" from "Caminhao"
    And I press "Create Motorista"
    Then I must be on the motorista page of "Sergio"
    And I should see "Sergio"

    When I follow "Edit this motorista"
    Then I should be on the editar motorista page of "Sergio"
    And I fill in "Cpf" with "1"
    And I press "Update Motorista"
    Then I must see "Cpf is the wrong length" error message
