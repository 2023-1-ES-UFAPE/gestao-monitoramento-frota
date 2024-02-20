Feature: Busca de motoristas
  As a Usuario do sistema
  I want to buscar motoristas de caminhao de carga informando seu CPF ou nome
  So that eu visualize o historico de rotas percorridas pelo motorista encontrado

  Scenario: Buscar Motorista por cpf
    #cadastrar motorista
    #cadastrar rota e colocar o motorista nela

    Given I am on the search motorista page
    When I fill in "cpf" with "123456"
    When I press "Search"

  Scenario: Buscar Motorista por cpf nao cadastrado
    Given I am on the search motorista page
    When I fill in "cpf" with "123456"
    When I press "Search"
    Then I see the "Motorista nao cadastrado" message

  Scenario: Buscar Motorista por cpf sem rotas percorridas
    #cadastrar motorista

    Given I am on the search motorista page
    When I fill in "cpf" with "123456"
    When I press "Search"
    Then I see the "Sem rotas registradas" message


  Scenario: Buscar Motorista por nome
    #cadastrar motorista

    Given I am on the search motorista page
    When I fill in "nome" with "jose maria"
    When I press "Search"
    Then I see the "Sem rotas registradas" message


  Scenario: Buscar mais de um motoristas com mesmo nome
    #cadastrar motorista 1 - n
    #cadastrar motorista 2 - mesmo nome

    Given I am on the search motorista page
    When I fill in "nome" with "jose maria duplo"
    When I press "Search"


