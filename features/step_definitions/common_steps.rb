When('I follow {string}') do |string|
  click_on string
end

#Regex ignoring words (vars)
When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in(field, :with => value)
end

When('I press {string}') do |button_name|
  click_button(button_name)
end

Then('I should see {string}') do |text|
  expect(page).to have_content("#{text}")
end

Then('I should not see {string}') do |text|
  expect(page).to_not have_content("#{text}")
end

# passos de autenticação antes dos testes do cucumber
Given(/^I am not authenticated$/) do
  visit('/users/sign_out') # ensure that at least
end

Given(/^I am a new, authenticated user$/) do
  email = 'testing@man.net'
  password = 'secretpass'
  User.new(:email => email, :password => password, :password_confirmation => password).save!

  visit '/users/sign_in'
  fill_in "user_email", :with => email
  fill_in "user_password", :with => password
  click_button "Entrar"
end