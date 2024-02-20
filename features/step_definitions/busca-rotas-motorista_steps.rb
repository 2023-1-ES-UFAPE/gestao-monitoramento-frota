Given('I am on the search motorista page') do
  visit '/search/motorista'
  expect(page).to have_current_path('/search/motorista')
end