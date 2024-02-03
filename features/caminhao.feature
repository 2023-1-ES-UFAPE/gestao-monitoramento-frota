Feature: gerenciamento de caminhao de carga
  As a administrador do sistema gestao monitoramento de frota
  I want to cadastrar, editar e remover caminhoes da frota
  So that possa usar o sistema, gerenciando e atualizando a frota

  Scenario: 'Add new Caminhao'
    Given I am on the caminhoes page
    When I follow "New caminhao"
    Then I should be on the new Caminhao page
    When I fill in "Modelo" with "Caminhao Toco"
    And I fill in "Placa" with "KXC-5805"
    And I fill in "Ano" with "2018"
    And I fill in "Capacidade" with "100"
    And I fill in "Status" with "Parado"
    And I fill in "Chassi" with "6My AZ4Vrv 4V Hz6335"
    And I fill in "Data ultima inspecao" with "06/10/2023"
    And I press "Create Caminhao"
    Then I must be on the caminhao page of "KXC-5805"
    And I should see "KXC-5805"

  Scenario: 'Edit caminhao'
    Given I am on the caminhoes page
    When I follow "New caminhao"
    Then I should be on the new Caminhao page
    When I fill in "Modelo" with "Caminhao Toco"
    And I fill in "Placa" with "KXC-5805"
    And I fill in "Ano" with "2018"
    And I fill in "Capacidade" with "100"
    And I fill in "Status" with "Parado"
    And I fill in "Chassi" with "6My AZ4Vrv 4V Hz6335"
    And I fill in "Data ultima inspecao" with "06/10/2023"
    And I press "Create Caminhao"
    Then I must be on the caminhao page of "KXC-5805"
    And I should see "KXC-5805"
    When I follow "Edit this caminhao"
    Then I should be on the Editar Caminhao page of "KXC-5805"
    When I fill in "Status" with "Manutencao"
    And I press "Update Caminhao"
    Then I must be on the paciente page of "KXC-5805"
    And I should see "Manutencao"

  Scenario: 'delete caminhao'
    Given I am on the caminhoes page
    When I follow "New caminhao"
    Then I should be on the new Caminhao page
    When I fill in "Modelo" with "Caminhao Toco"
    And I fill in "Placa" with "KXC-5805"
    And I fill in "Ano" with "2018"
    And I fill in "Capacidade" with "100"
    And I fill in "Status" with "Parado"
    And I fill in "Chassi" with "6My AZ4Vrv 4V Hz6335"
    And I fill in "Data ultima inspecao" with "06/10/2023"
    And I press "Create Caminhao"
    Then I must be on the caminhao page of "KXC-5805"
    And I should see "KXC-5805"
    When I follow "Destroy this caminhao"
    Then I should be on the caminhoes page
    And I should not see "KXC-5805"




