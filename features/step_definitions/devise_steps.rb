Given 'I am not signed in' do
  visit destroy_user_session_path
end

Then /^I should be signed in as "([^"]*)"$/ do |email|
  Then %{I should see "Signed in as #{email}. Sign out"}
end

Given /^I am signed in as "([^"]*)"$/ do |email|
  Given %{there is a user with username "#{email}" and password "foobar"}
  visit new_user_session_path
  When %{I fill in "Email" with "#{email}"}
  And %{I fill in "Password" with "foobar"}
  And %{I press "Sign in"}
end

Then /^I should not be signed in$/ do
  Then %{I should see "Sign up or sign in"}
end


Given /^there is a user with username "([^"]*)" and password "([^"]*)"$/ do |email, password|
  @current_user = User.find_or_initialize_by_email email
  @current_user.password = password
  @current_user.password_confirmation = password
  @current_user.save!
end
