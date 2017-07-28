Given(/^the following user exist$/) do |table|
  table.hashes.each do | user |
    User.create(user)
  end
end

Given(/^I am logged in as "([^"]*)"$/) do |name|
  user = User.find_by(name: name)
  login_as(user, scope: :user)
  visit root_path
end

Given(/^I click on the "([^"]*)" (?:link|button)$/) do |link_or_button_name|
  click_link_or_button link_or_button_name
end

Given(/^I select "([^"]*)" from the recipient list$/) do |recipient|
  select recipient, from: "Recipient"
end

When(/^I enter "([^"]*)" in "([^"]*)"$/) do |content, input|
  fill_in input, with: content
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Given(/^I am on landing page$/) do
  visit new_conversation_path
end

When(/^I send a mail to "([^"]*)"$/) do |arg1|

end