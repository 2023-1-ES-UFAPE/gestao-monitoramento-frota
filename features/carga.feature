Feature: Gerenciamento de carga
  As a Usuario do sistema
  I want to registrar, editar e remover uma carga a ser transportada
  So that eu mantenha registro do que esta sendo transportado

  Scenario: Criar Carga
    Given I am on the enderecos page
    And I follow_new_endereco
    Then I should be on the new Endereco page
    When I fill in_cidade with "Carpina"
    And I fill in "Cep" with "55750001"
    And I press "Create Endereco"

    Given I am on the enderecos page
    And I follow_new_endereco
    Then I should be on the new Endereco page
    When I fill in_cidade with "Limoeiro"
    And I fill in "Cep" with "77750002"
    And I press "Create Endereco"

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

    Given I am on the rotas page
    And I follow "New rotum"
    Then I should be on the new Rotum page
    When I select "Carpina" from the "Endereco partida" dropdown
    And I select "Limoeiro" from the "Endereco chegada" dropdown
    And I fill in the "Data de partida" field with "2024-02-04"
    And I fill in the "Data de chegada" field with "2024-02-06"
    And I fill in the "Observacoes" field with "Rota Carpina - Limoeiro"
    And I select "KMC-5805" from the "Caminhao" dropdown
    And I press "Create Rotum"

    Given I am on the Carga page
    And I follow_new_carga
    Then I should be on the new Carga page
    When I fill in_descricao with "iPhone 10"
    And I fill in the "Peso" with "20"
    And I fill in the "Volume" with "2"
    And I fill in the "Valor" with "3000"
    And I fill in the "Numero rastreamento" with "1234567"
    And I select to "Rota Carpina - Limoeiro" from "Rota"
    And I press the "Create Carga"

  Scenario: Deletar Carga
    Given I am on the enderecos page
    And I follow_new_endereco
    Then I should be on the new Endereco page
    When I fill in_cidade with "Carpina"
    And I fill in "Cep" with "55750001"
    And I press "Create Endereco"

    Given I am on the enderecos page
    And I follow_new_endereco
    Then I should be on the new Endereco page
    When I fill in_cidade with "Limoeiro"
    And I fill in "Cep" with "77750002"
    And I press "Create Endereco"

    Given I am on caminhoes page
    When I follow the "New caminhao"
    Then I should be on new Caminhao page
    When I fill in "Modelo" with "Caminhao L"
    And I fill in "Placa" with "KMC-5806"
    And I fill in "Ano" with "2015"
    And I fill in "Capacidade" with "145"
    And I fill in "Status" with "Parado"
    And I fill in "Chassi" with "6Mb AZ4Vrv 4V Hz6335"
    And I fill in "Data ultima inspecao" with "03/11/2023"
    And I press "Create Caminhao"

    Given I am on the rotas page
    And I follow "New rotum"
    Then I should be on the new Rotum page
    When I select "Carpina" from the "Endereco partida" dropdown
    And I select "Limoeiro" from the "Endereco chegada" dropdown
    And I fill in the "Data de partida" field with "2024-02-04"
    And I fill in the "Data de chegada" field with "2024-02-06"
    And I fill in the "Observacoes" field with "Rota Carpina - Limoeiro"
    And I select "KMC-5806" from the "Caminhao" dropdown
    And I press "Create Rotum"

    Given I am on the Carga page
    And I follow_new_carga
    Then I should be on the new Carga page
    When I fill in_descricao with "iPhone 11"
    And I fill in the "Peso" with "20"
    And I fill in the "Volume" with "2"
    And I fill in the "Valor" with "3000"
    And I fill in the "Numero rastreamento" with "1234567"
    And I select to "Rota Carpina - Limoeiro" from "Rota"
    And I press the "Create Carga"
    Then I must be on the carga page of "iPhone 11"
    And I should see "iPhone 11"
    When I press "Destroy this carga"

  Scenario: Editar Carga
    Given I am on the enderecos page
    And I follow_new_endereco
    Then I should be on the new Endereco page
    When I fill in_cidade with "Carpina"
    And I fill in "Cep" with "55750001"
    And I press "Create Endereco"

    Given I am on the enderecos page
    And I follow_new_endereco
    Then I should be on the new Endereco page
    When I fill in_cidade with "Limoeiro"
    And I fill in "Cep" with "77750002"
    And I press "Create Endereco"

    Given I am on caminhoes page
    When I follow the "New caminhao"
    Then I should be on new Caminhao page
    When I fill in "Modelo" with "Caminhao L"
    And I fill in "Placa" with "KMC-5806"
    And I fill in "Ano" with "2015"
    And I fill in "Capacidade" with "145"
    And I fill in "Status" with "Parado"
    And I fill in "Chassi" with "6Mb AZ4Vrv 4V Hz6335"
    And I fill in "Data ultima inspecao" with "03/11/2023"
    And I press "Create Caminhao"

    Given I am on the rotas page
    And I follow "New rotum"
    Then I should be on the new Rotum page
    When I select "Carpina" from the "Endereco partida" dropdown
    And I select "Limoeiro" from the "Endereco chegada" dropdown
    And I fill in the "Data de partida" field with "2024-02-04"
    And I fill in the "Data de chegada" field with "2024-02-06"
    And I fill in the "Observacoes" field with "Rota Carpina - Limoeiro"
    And I select "KMC-5806" from the "Caminhao" dropdown
    And I press "Create Rotum"

    Given I am on the Carga page
    And I follow_new_carga
    Then I should be on the new Carga page
    When I fill in_descricao with "iPhone 11"
    And I fill in the "Peso" with "20"
    And I fill in the "Volume" with "2"
    And I fill in the "Valor" with "3000"
    And I fill in the "Numero rastreamento" with "1234567"
    And I select to "Rota Carpina - Limoeiro" from "Rota"
    And I press the "Create Carga"
    Then I must be on the carga page of "iPhone 11"
    And I should see "iPhone 11"
    When I follow "Edit this carga"
    And I fill in the "Valor" with "3001"
    And I press in the "Update Carga"

  Scenario: Tentar criar carga sem selecionar um caminhão
    Given I am on the Carga page
    And I follow_new_carga
    Then I should be on the new Carga page
    When I fill in_descricao with "iPhone 11"
    And I fill in the "Peso" with "20"
    And I fill in the "Volume" with "2"
    And I fill in the "Valor" with "3000"
    And I fill in the "Numero rastreamento" with "1234567"
    And I select "Selecione uma Rota" from the "Rota" dropdown
    And I press the "Create Carga"
    Then I should see error message indicating that a rota must be selected

  Scenario: Tentar criar carga sem adicionar um valor
    Given I am on the enderecos page
    And I follow_new_endereco
    Then I should be on the new Endereco page
    When I fill in_cidade with "Carpina"
    And I fill in "Cep" with "55750001"
    And I press "Create Endereco"

    Given I am on the enderecos page
    And I follow_new_endereco
    Then I should be on the new Endereco page
    When I fill in_cidade with "Limoeiro"
    And I fill in "Cep" with "77750002"
    And I press "Create Endereco"

    Given I am on caminhoes page
    When I follow the "New caminhao"
    Then I should be on new Caminhao page
    When I fill in "Modelo" with "Caminhao L"
    And I fill in "Placa" with "KMC-5806"
    And I fill in "Ano" with "2015"
    And I fill in "Capacidade" with "145"
    And I fill in "Status" with "Parado"
    And I fill in "Chassi" with "6Mb AZ4Vrv 4V Hz6335"
    And I fill in "Data ultima inspecao" with "03/11/2023"
    And I press "Create Caminhao"

    Given I am on the rotas page
    And I follow "New rotum"
    Then I should be on the new Rotum page
    When I select "Carpina" from the "Endereco partida" dropdown
    And I select "Limoeiro" from the "Endereco chegada" dropdown
    And I fill in the "Data de partida" field with "2024-02-04"
    And I fill in the "Data de chegada" field with "2024-02-06"
    And I fill in the "Observacoes" field with "Rota Carpina - Limoeiro"
    And I select "KMC-5806" from the "Caminhao" dropdown
    And I press "Create Rotum"

    Given I am on the Carga page
    And I follow_new_carga
    Then I should be on the new Carga page
    When I fill in_descricao with "iPhone 11"
    And I fill in the "Peso" with "20"
    And I fill in the "Volume" with "2"
    And I fill in the "Numero rastreamento" with "1234567"
    And I select to "Rota Carpina - Limoeiro" from "Rota"
    And I press the "Create Carga"
    Then I should see an error message indicating that a valor must be selected
