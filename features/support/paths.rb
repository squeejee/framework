module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name
    
    when /the home\s?page/
      '/'
    when /the sign up page/
      new_user_registration_path
    when /the sign in page/
      new_user_session_path
    when /the account page/
      account_path
    when /the account edit page/
      edit_user_registration_path
    when /the new referral page/
      new_referral_path
    when /^(.*)'s profile page$/i
      profile_path(User.find_by_login($1))
    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
        "Now, go and add a mapping in #{__FILE__}"
    end
  end
end

World(NavigationHelpers)
