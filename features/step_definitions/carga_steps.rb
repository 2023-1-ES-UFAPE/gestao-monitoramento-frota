Given('I am on caminhoes page') do
  visit '/caminhaos'
  expect(page).to have_current_path('/caminhaos')
end

When('I follow the "New caminhao"') do
  click_link('New caminhao')
end

Then('I should be on new Caminhao page') do
  visit '/caminhaos/new'
  expect(page).to have_current_path('/caminhaos/new')
end

Given('I am on the Carga page') do
  visit '/cargas'
  expect(page).to have_current_path('/cargas')
end

When('I follow_new_carga') do
  click_link('New carga')
end

Then('I should be on the new Carga page') do
  expect(page).to have_current_path('/cargas/new')
end

When('I fill in_descricao with {string}') do |descricao|
  fill_in('Descricao', with: descricao)
end

And('I fill in the "Peso" with {string}') do |peso|
  fill_in('Peso', with: peso)
end

And('I fill in the "Volume" with {string}') do |volume|
  fill_in('Volume', with: volume)
end

And('I fill in the "Valor" with {string}') do |valor|
  fill_in('Valor', with: valor)
end

And('I fill in the "Numero rastreamento" with {string}') do |numero_rastreamento|
  fill_in('Numero rastreamento', with: numero_rastreamento)
end

When('I select to {string} from {string}') do |option, dropdown_label|
  select(option, from: dropdown_label)
end

And('I press the "Create Carga"') do
  click_button('Create Carga')
end

And('I press in the "Update Carga"') do
  click_button('Update Carga')
end

Then('I must be on the carga page of {string}') do |string|
  carga = Carga.find_by(descricao: string)
  puts carga.inspect
  visit carga_path(carga)
  expect(page).to have_current_path(carga_path(carga))
end

And('I press in "Destroy this carga"') do
  click_button('Destroy this carga')
end

Then('I should see error message indicating that a rota must be selected') do
  expect(page).to have_content("Rota can't be blank")
end

Then('I should see an error message indicating that a valor must be selected') do
  expect(page).to have_content("Valor is not a number")
  expect(page).to have_content("Valor can't be blank")
end