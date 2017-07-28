Then(/^"([^"]*)" should have "([^"]*)" messages$/) do |user, expected_count|
  @receiver = User.find_by(name: user.downcase)
  count = @receiver.mailbox.inbox.count
  expect(count).to eq expected_count.to_i
end