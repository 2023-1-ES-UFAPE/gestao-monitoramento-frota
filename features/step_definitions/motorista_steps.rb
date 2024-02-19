Given('I am on the motoristas page') do
  visit '/motoristas'
end

Then('I should be on the new Motorista page') do
  expect(page).to have_current_path('/motoristas/new')
end

When('I select {string} from {string}') do |option, dropdown_label|
  select(option, from: dropdown_label)
end

Then('I must be on the motorista page of {string}') do |string|
  motorista = Motorista.find_by(nome: string)
  visit motorista_path(motorista)
  expect(page).to have_current_path(motorista_path(motorista))
end

Then('I should be on the editar motorista page of {string}') do |string|
  motorista = Motorista.find_by(nome: string)

  visit edit_motorista_path(motorista)
  expect(page).to have_current_path(edit_motorista_path(motorista))
end

Then('I must see {string} error message') do |message|
  expect(page).to have_content(message)
end
