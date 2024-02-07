Feature: gerenciamento de rotas
  As a usuario do sistema gestao monitoramento de frota
  I want to cadastrar, editar e remover uma rota
  So that possa usar o sistema, gerenciando e atualizando a rota

  Scenario: Criar rotas
    Given I am on the enderecos page
    And I follow_new_endereco
    Then I should be on the new Endereco page
    When I fill in_cidade with "Surubim"
    And I fill in "Cep" with "55750000"
    And I press "Create Endereco"

    Given I am on the enderecos page
    And I follow_new_endereco
    Then I should be on the new Endereco page
    When I fill in_cidade with "Recife"
    And I fill in "Cep" with "77750000"
    And I press "Create Endereco"

    Given I am on the caminhao page
    And I follow "New caminhao"
    Then I should be on the new Caminhao page
    When I fill in "Modelo" with "Truck Model"
    And I fill in "Placa" with "XYZ-1234"
    And I fill in "Ano" with "2022"
    And I fill in "Capacidade" with "200"
    And I fill in "Status" with "Parado"
    And I fill in "Chassi" with "Chassi123456"
    And I fill in "Data ultima inspecao" with "2024-02-04"
    And I press "Create Caminhao"

    Given I am on the rotas page
    And I follow "New rotum"
    Then I should be on the new Rotum page
    When I select "Surubim" from the "Endereco partida" dropdown
    And I select "Recife" from the "Endereco chegada" dropdown
    And I fill in the "Data de partida" field with "2024-02-04"
    And I fill in the "Data de chegada" field with "2024-02-06"
    And I fill in the "Observacoes" field with "Nenhuma"
    And I select "XYZ-1234" from the "Caminhao" dropdown
    And I press "Create Rotum"

#  Scenario: Excluir Rota
#    Given I am on the enderecos page
#    And I follow_new_endereco
#    Then I should be on the new Endereco page
#    When I fill in_cidade with "Carpina"
#    And I fill in "Cep" with "55750001"
#    And I press "Create Endereco"
#
#    Given I am on the enderecos page
#    And I follow_new_endereco
#    Then I should be on the new Endereco page
#    When I fill in_cidade with "Limoeiro"
#    And I fill in "Cep" with "77750002"
#    And I press "Create Endereco"
#
#    Given I am on the caminhao page
#    And I follow "New caminhao"
#    Then I should be on the new Caminhao page
#    When I fill in "Modelo" with "Truk Model"
#    And I fill in "Placa" with "XYL-1234"
#    And I fill in "Ano" with "2021"
#    And I fill in "Capacidade" with "100"
#    And I fill in "Status" with "Parado"
#    And I fill in "Chassi" with "Chassi124456"
#    And I fill in "Data ultima inspecao" with "2024-01-04"
#    And I press "Create Caminhao"
#
#    Given I am on the rotas page
#    And I follow "New rotum"
#    Then I should be on the new Rotum page
#    When I select "Carpina" from the "Endereco partida" dropdown
#    And I select "Limoeiro" from the "Endereco chegada" dropdown
#    And I fill in the "Data de partida" field with "2024-02-04"
#    And I fill in the "Data de chegada" field with "2024-02-06"
#    And I fill in the "Observacoes" field with "Nenhuma"
#    And I select "XYL-1234" from the "Caminhao" dropdown
#    And I press "Create Rotum"
#
#    Given I am on the rotas page
#    When I follow "Show this rotum"
#    Then I should be on the show page of the last rotum
#    And I press in "Destroy this rotum"
#
#  Scenario: Editar Rota
#    Given I am on the enderecos page
#    And I follow_new_endereco
#    Then I should be on the new Endereco page
#    When I fill in_cidade with "Paudalho"
#    And I fill in "Cep" with "55750001"
#    And I press "Create Endereco"
#
#    Given I am on the enderecos page
#    And I follow_new_endereco
#    Then I should be on the new Endereco page
#    When I fill in_cidade with "Santa Cruz"
#    And I fill in "Cep" with "77750002"
#    And I press "Create Endereco"
#
#    Given I am on the caminhao page
#    And I follow "New caminhao"
#    Then I should be on the new Caminhao page
#    When I fill in "Modelo" with "Trucky Model"
#    And I fill in "Placa" with "XBL-1234"
#    And I fill in "Ano" with "2019"
#    And I fill in "Capacidade" with "150"
#    And I fill in "Status" with "Parado"
#    And I fill in "Chassi" with "Chassi224456"
#    And I fill in "Data ultima inspecao" with "2023-12-04"
#    And I press "Create Caminhao"
#
#    Given I am on the rotas page
#    And I follow "New rotum"
#    Then I should be on the new Rotum page
#    When I select "Paudalho" from the "Endereco partida" dropdown
#    And I select "Santa Cruz" from the "Endereco chegada" dropdown
#    And I fill in the "Data de partida" field with "2024-02-04"
#    And I fill in the "Data de chegada" field with "2024-02-06"
#    And I fill in the "Observacoes" field with "Nenhuma"
#    And I select "XBL-1234" from the "Caminhao" dropdown
#    And I press "Create Rotum"
#
#    Given I am on the rotas page
#    When I follow "Show this rotum"
#    Then I should be on the show page of the last rotum
#    And I follow in "Edit this rotum"
#    And I fill in the "Observacoes" field with "Nova obs"
#    And I press in "Update Rotum"

  Scenario: Criar rotas sem selecionar um caminhão
    Given I am on the enderecos page
    And I follow_new_endereco
    Then I should be on the new Endereco page
    When I fill in_cidade with "Curitiba"
    And I fill in "Cep" with "55750020"
    And I press "Create Endereco"

    Given I am on the enderecos page
    And I follow_new_endereco
    Then I should be on the new Endereco page
    When I fill in_cidade with "Juazeiro"
    And I fill in "Cep" with "77750020"
    And I press "Create Endereco"

    Given I am on the rotas page
    And I follow "New rotum"
    Then I should be on the new Rotum page
    When I select "Curitiba" from the "Endereco partida" dropdown
    And I select "Juazeiro" from the "Endereco chegada" dropdown
    And I fill in the "Data de partida" field with "2024-02-04"
    And I fill in the "Data de chegada" field with "2024-02-06"
    And I fill in the "Observacoes" field with "Nenhuma"
    And I select "Selecione um Caminhão" from the "Caminhao" dropdown
    And I press "Create Rotum"
    Then I should see an error message indicating that a caminhao must be selected

  Scenario: Criar rota sem endereço de partida e de chegada
    Given I am on the caminhao page
    And I follow "New caminhao"
    Then I should be on the new Caminhao page
    When I fill in "Modelo" with "Truckyi Model"
    And I fill in "Placa" with "XCZ-1234"
    And I fill in "Ano" with "2020"
    And I fill in "Capacidade" with "160"
    And I fill in "Status" with "Parado"
    And I fill in "Chassi" with "Chassi1244456"
    And I fill in "Data ultima inspecao" with "2024-02-04"
    And I press "Create Caminhao"

    Given I am on the rotas page
    And I follow "New rotum"
    Then I should be on the new Rotum page
    When I fill in the "Data de partida" field with "2024-02-04"
    And I fill in the "Data de chegada" field with "2024-02-06"
    And I fill in the "Observacoes" field with "Nenhuma"
    And I select "XCZ-1234" from the "Caminhao" dropdown
    And I press "Create Rotum"
    Then I should see an error message indicating that the address of departure and arrival are required