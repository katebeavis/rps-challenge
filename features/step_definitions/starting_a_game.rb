Given(/^I am on the homepage$/) do
  visit('/')
end

Given(/^I fill in "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|
  fill_in('name', with: 'kate')
end

When(/^I click on "([^"]*)"$/) do |arg1|
  click_button('submit')
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  page.should have_content('Welcome')
end
