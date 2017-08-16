Given(/^I am on home page$/) do
  home.load
end

When(/^I login$/) do
  home.signin_button.click
  login.email.set User.get_email
  login.password.set User.get_password

  #   login.email.set "pl_ppe3@mailinator.com"
  #   login.password.set "1q2w3e4r"

  login.signin_button.click
end


Then(/^I should see the signout link$/) do
  expect(home.has_signout_button).to eql(true)
end

