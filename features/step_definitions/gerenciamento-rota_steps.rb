Given('I am on the enderecos page') do
  visit '/enderecos'
  expect(page).to have_current_path('/enderecos')
end

When('I follow_new_endereco') do
  click_link('New endereco')
end

Then('I should be on the new Endereco page') do
  expect(page).to have_current_path('/enderecos/new')
end

When('I fill in_cidade with {string}') do |city|
  fill_in('Cidade', with: city)
end

When('I fill in "CEP" with "{string}"') do |cep|
  fill_in 'CEP', with: cep.gsub(/\D/, '')
end

When('I press the "Create Endereco" button') do
  click_button('Create Endereco')
end

Given('I am on the rotas page') do
  visit '/rota'
  expect(page).to have_current_path('/rota')
end

Then('I should be on the new Rotum page') do
  visit '/rota/new'
  expect(page).to have_current_path('/rota/new')
end

When('I select {string} from the {string} dropdown') do |option, field|
  select option, from: field
end

When('I fill in the "Data de partida" field with {string}') do |date|
  fill_in('Data de partida', with: date)
end

When('I fill in the "Data de chegada" field with {string}') do |date|
  fill_in('Data de chegada', with: date)
end

When('I fill in the "Observacoes" field with {string}') do |observations|
  fill_in('Observacoes', with: observations)
end