#Action steps
When(/^I visit "([^"]*)" page$/) do |page_name|
  visit get_path page_name
end

#Form action steps
When(/^I click "([^"]*)" (?:link|button)$/) do |link_or_button_name|
  click_link_or_button link_or_button_name
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in field, with: value
end

Given(/^I select "([^"]*)" from the "([^"]*)"$/) do |option, select_field|
  select option, from: select_field
end

#Assertions steps
Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Then(/^I should be on "([^"]*)" page$/) do |page_name|
  expect(page).to have_current_path get_path page_name
end

Then(/^show me the page$/) do
  save_and_open_page
end

#Background steps
Given(/^the user "([^"]*)" exist$/) do |name|
  FactoryGirl.create(:user, name: name)
end

Given(/^I am logged in as "([^"]*)"$/) do |name|
  @user = User.find_by(name: name)
  login_as(@user, scope: :user)
end

#Step helpers
def get_path(page_name)

  case page_name
  when 'Sign up'
    path = new_user_registration_path
  when 'Log in'
    path = new_user_session_path
  when 'landing'
    path = root_path
  else
    raise 'Path missing!'
  end

end