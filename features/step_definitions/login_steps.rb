# Given(/^I am on home page$/) do
#   visit ''
# end
#
# When(/^I login$/) do
#   find('.signin-register--signin-button a').click
#   fill_in('email', :with => 'pl_ppe3@mailinator.com')
#   fill_in('password', :with => '1q2w3e4r')
#   click_button('Sign in')
# end
#
# Then(/^I should see the signout link$/) do
#   page.has_content?('Sign out')
# end

Given(/^I am on home page$/) do
  @home = Home.new
  @home.load
end

When(/^I login$/) do
  # find('.signin-register--signin-button a').click
  @home.signin_button.click
  @login = Login.new
  @login.email.set "pl_ppe3@mailinator.com"
  @login.password.set "1q2w3e4r"
  @login.signin_button.click
end

Then(/^I should see the signout link$/) do
  @home.has_sign_out_button?
end
