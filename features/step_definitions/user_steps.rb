Then /^I should see error messages$/ do
  page.should have_css('div.errorExplanation')
end

Given /^no user exists with an email of "(.*)"$/ do |email|
  User.find_by_email(email).should be_nil
end

Given /^a user exists with an email of "(.*)"$/ do |email|
  user = Factory :valid_user, :login => "valid_user", :email => email
end

Given /^I am signed up and confirmed as "(.*)\/(.*)"$/ do |email, password|
  user = Factory :valid_user,
    :email                 => email,
    :password              => password,
    :password_confirmation => password
end

Given /^I am signed up and signed in as "(.*)\/(.*)"$/ do |email, password|
  user = Factory :valid_user,
    :email                 => email,
    :password              => password,
    :password_confirmation => password
  When %{I sign in as "#{email}\/#{password}"}
end

When /^I sign in( with "remember me")? as "(.*)\/(.*)"$/ do |remember, email, password|
  When %{I go to the sign in page}
  And %{I fill in "Email" with "#{email}"}
  And %{I fill in "Password" with "#{password}"}
  And %{I check "Remember me"} if remember
  And %{I press "Sign In"}
end
