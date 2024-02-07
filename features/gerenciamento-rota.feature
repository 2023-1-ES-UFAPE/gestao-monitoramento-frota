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

    Given I am on the caminhaos page
    And I follow "New caminhao"
    Then I should be on the new Caminhao pag
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