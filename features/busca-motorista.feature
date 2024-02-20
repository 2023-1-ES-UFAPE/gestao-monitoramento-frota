Feature: Busca de motoristas
  As a Usuario do sistema
  I want to buscar motoristas de caminhao de carga informando seu CPF ou nome
  So that eu visualize o historico de rotas percorridas pelo motorista encontrado

  Scenario: Buscar Motorista por cpf
    #cadastrar motorista
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

    #cadastrar rota e colocar o motorista nela
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

    Given I am on the rotas page
    And I follow "New rotum"
    Then I should be on the new Rotum page
    When I select "Paudalho" from the "Endereco partida" dropdown
    And I select "Santa Cruz" from the "Endereco chegada" dropdown
    And I fill in the "Data de partida" field with "2024-02-04"
    And I fill in the "Data de chegada" field with "2024-02-06"
    And I fill in the "Observacoes" field with "Nenhuma"
    And I select "KMC-5805" from the "Caminhao" dropdown
    And I press "Create Rotum"

    Given I am on the search motorista page
    When I fill in "cpf" with "70894184059"
    When I press "Search"
    Then I should see "Rotas de Sergio, CPF: 70894184059"

  Scenario: Buscar Motorista por cpf nao cadastrado
    Given I am on the search motorista page
    When I fill in "cpf" with "123456"
    When I press "Search"
    Then I should see "Sem motoristas com esse nome/cpf"

  Scenario: Buscar Motorista por cpf sem rotas percorridas
    #cadastrar motorista

    #cadastrar motorista
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

    Given I am on the search motorista page
    When I fill in "cpf" with "70894184059"
    When I press "Search"
    Then I should see "Nenhuma rota registrada"

  Scenario: Buscar Motorista por nome
    #cadastrar motorista

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

    #cadastrar rota e colocar o motorista nela
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

    Given I am on the rotas page
    And I follow "New rotum"
    Then I should be on the new Rotum page
    When I select "Paudalho" from the "Endereco partida" dropdown
    And I select "Santa Cruz" from the "Endereco chegada" dropdown
    And I fill in the "Data de partida" field with "2024-02-04"
    And I fill in the "Data de chegada" field with "2024-02-06"
    And I fill in the "Observacoes" field with "Nenhuma"
    And I select "KMC-5805" from the "Caminhao" dropdown
    And I press "Create Rotum"

    Given I am on the search motorista page
    When I fill in "cpf" with "Sergio"
    When I press "Search"
    Then I should see "Rotas de Sergio, CPF: 70894184059"

  Scenario: Buscar mais de um motoristas com mesmo nome
    #cadastrar motorista

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

    Given I am on caminhoes page
    When I follow the "New caminhao"
    Then I should be on new Caminhao page
    When I fill in "Modelo" with "Caminhao Y"
    And I fill in "Placa" with "KMC-5806"
    And I fill in "Ano" with "2015"
    And I fill in "Capacidade" with "145"
    And I fill in "Status" with "Parado"
    And I fill in "Chassi" with "6Mb AZ4Vrv 4V Hz6336"
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

    Given I am on the motoristas page
    When I follow "New motorista"
    Then I should be on the new Motorista page
    When I fill in "Nome" with "Sergio"
    And I fill in "Cpf" with "70894184058"
    And I fill in "Cnh" with "58120111490"
    And I fill in "Telefone" with "87980089007"
    And I fill in "Data nascimento" with "02/02/1995"
    And I select "KMC-5806" from "Caminhao"
    And I press "Create Motorista"
    Then I must be on the motorista page of "Sergio"
    And I should see "Sergio"

    #cadastrar rota e colocar o motorista nela
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

    Given I am on the rotas page
    And I follow "New rotum"
    Then I should be on the new Rotum page
    When I select "Paudalho" from the "Endereco partida" dropdown
    And I select "Santa Cruz" from the "Endereco chegada" dropdown
    And I fill in the "Data de partida" field with "2024-02-04"
    And I fill in the "Data de chegada" field with "2024-02-06"
    And I fill in the "Observacoes" field with "rota de sergio 1"
    And I select "KMC-5805" from the "Caminhao" dropdown
    And I press "Create Rotum"

    Given I am on the rotas page
    And I follow "New rotum"
    Then I should be on the new Rotum page
    When I select "Paudalho" from the "Endereco partida" dropdown
    And I select "Santa Cruz" from the "Endereco chegada" dropdown
    And I fill in the "Data de partida" field with "2024-02-04"
    And I fill in the "Data de chegada" field with "2024-02-06"
    And I fill in the "Observacoes" field with "rota de sergio 2"
    And I select "KMC-5806" from the "Caminhao" dropdown
    And I press "Create Rotum"

    Given I am on the search motorista page
    When I fill in "cpf" with "Sergio"
    When I press "Search"
    Then I should see "rota de sergio 1"
    Then I should see "rota de sergio 2"
    #devo mostrar rotas dos dois motoristas com mesmo nome?