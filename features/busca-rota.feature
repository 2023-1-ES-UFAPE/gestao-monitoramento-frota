Feature: Busca de rotas
  As a usuario do sistema gestao monitoramento de frota
  I want to buscar as rotas que um caminhao de carga ja percorreu informando sua placa
  So that eu saiba aonde cada caminhao da frota ja foi

  Scenario: Buscar rota sem placa inserida
    Given I am on the search rota page
    When I press "Search"
    Then I see the "Placa may not be empty" message

  Scenario: Buscar rota com placa de caminhão inexistente
    Given I am on the search rota page
    When I fill in "placa" with "abc"
    And I press "Search"
    Then I see the "Placa may references a caminhao" message

  Scenario: Buscar rota com placa de caminhão existente mas sem rotas cadastradas
    Given I am on the Lorry page
    And I follow "New caminhao"
    Then I should be on the new Lorry page
    When I fill in "Modelo" with "Truck Model"
    And I fill in "Placa" with "XYZ-1234"
    And I fill in "Ano" with "2022"
    And I fill in "Capacidade" with "200"
    And I fill in "Status" with "Parado"
    And I fill in "Chassi" with "Chassi123456"
    And I fill in "Data ultima inspecao" with "2024-02-04"
    And I press "Create Caminhao"

    Given I am on the search rota page
    When I fill in "placa" with "XYZ-1234"
    When I press "Search"
    Then I see the "No rotas found" message

  Scenario: Buscar rota com placa de caminhão existente e rotas cadastradas
    Given I am on the enderecos page
    And I follow_new_endereco
    Then I should be on the new Endereco page
    When I fill in_cidade with "Paudalho"
    And I fill in "Cep" with "55750001"
    And I press "Create Endereco"

    Given I am on the enderecos page
    And I follow_new_endereco
    Then I should be on the new Endereco page
    When I fill in_cidade with "Santa Cruz"
    And I fill in "Cep" with "77750002"
    And I press "Create Endereco"

    Given I am on the Lorry page
    And I follow "New caminhao"
    Then I should be on the new Lorry page
    When I fill in "Modelo" with "Trucky Model"
    And I fill in "Placa" with "XBL-1234"
    And I fill in "Ano" with "2019"
    And I fill in "Capacidade" with "150"
    And I fill in "Status" with "Parado"
    And I fill in "Chassi" with "Chassi224456"
    And I fill in "Data ultima inspecao" with "2023-12-04"
    And I press "Create Caminhao"

    Given I am on the rotas page
    And I follow "New rotum"
    Then I should be on the new Rotum page
    When I select "Paudalho" from the "Endereco partida" dropdown
    And I select "Santa Cruz" from the "Endereco chegada" dropdown
    And I fill in the "Data de partida" field with "2024-02-04"
    And I fill in the "Data de chegada" field with "2024-02-06"
    And I fill in the "Observacoes" field with "Nenhuma"
    And I select "XBL-1234" from the "Caminhao" dropdown
    And I press "Create Rotum"

    Given I am on the search rota page
    When I fill in "placa" with "XBL-1234"
    When I press "Search"
    Then I should not see "No rotas found"
    And I see at least one route rendered