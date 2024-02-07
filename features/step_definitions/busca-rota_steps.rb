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
