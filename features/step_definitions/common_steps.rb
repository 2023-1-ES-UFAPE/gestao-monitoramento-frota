When('I follow {string}') do |string|
  click_on string
end

#Regex ignoring words (vars)
When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in(field, :with => value)
end

When('I press {string}') do |button|
  click_button(button)
end

Then('I should see {string}') do |text|
  expect(page).to have_content("#{text}")
end

Then('I should not see {string}') do |text|
  expect(page).to_not have_content("#{text}")
end
