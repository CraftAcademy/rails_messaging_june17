
Given(/^I send a mail to "([^"]*)"$/) do |name|
  @user = User.find_by(name: 'bob')
  @receiver = User.find_by(name: name)
  @user.send_message(@receiver, 'Lorem ipsum...', 'Subject')
end

Then(/^I should have "([^"]*)" messages$/) do |count|
  count = @receiver.mailbox.inbox.count
  expect(count).to eq count.to_i
end
