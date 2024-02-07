#Scenario: Buscar rota sem placa inserida
Given('I am on the search rota page') do
  visit '/search/rota'
  expect(page).to have_current_path('/search/rota')
end

Then('I see the {string} message') do |message|
  assert_selector('p', text: message)
end

Then('I see at least one route rendered') do
  assert_selector('div', {:minimum=>1})
end

Given('I am on the Lorry page') do
  visit '/caminhaos'
  expect(page).to have_current_path('/caminhaos')
end

Then('I should be on the new Lorry page') do
  visit '/caminhaos/new'
  expect(page).to have_current_path('/caminhaos/new')
end


