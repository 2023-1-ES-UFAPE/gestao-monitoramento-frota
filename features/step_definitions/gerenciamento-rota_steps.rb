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

Given('I am on the Truck page') do
  visit '/caminhaos'
  expect(page).to have_current_path('/caminhaos')
end

Then('I should be on the new Truck page') do
  visit '/caminhaos/new'
  expect(page).to have_current_path('/caminhaos/new')
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

Then('I should be on the show page of the last rotum') do
  last_rotum = Rotum.last
  visit rotum_path(last_rotum)
  expect(page).to have_current_path(rotum_path(last_rotum))
end

When('I press in "Destroy this rotum"') do
  click_button('Destroy this rotum')
end

And('I follow in "Edit this rotum"') do
  click_link('Edit this rotum')
end

And('I press in "Update Rotum"') do
  click_button('Update Rotum')
end

Then('I should see an error message indicating that a caminhao must be selected') do
  expect(page).to have_content("Caminhao must exist")
  expect(page).to have_content("Caminhao can't be blank")
end

Then('I should see an error message indicating that the address of departure and arrival are required') do
  expect(page).to have_content("Endereco partida must exist")
  expect(page).to have_content("Endereco chegada must exist")
  expect(page).to have_content("Endereco partida can't be blank")
  expect(page).to have_content("Endereco chegada can't be blank")
end

