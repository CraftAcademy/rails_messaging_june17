Then(/^"([^"]*)" should have "([^"]*)" messages$/) do |user, expected_count|
  @receiver = User.find_by(name: user)
  count = @receiver.mailbox.inbox.count
  expect(count).to eq expected_count.to_i
end

Given(/^"([^"]*)" send a mail to "([^"]*)"$/) do |sender_name, receiver_name|
  @user = User.find_by(name: sender_name)
  @receiver = User.find_by(name: receiver_name)
  @user.send_message(@receiver, 'Lorem ipsum...', 'Subject')
end
