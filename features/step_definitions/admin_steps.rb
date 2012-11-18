Given /^there is an admin$/ do
  AdminUser.create!(:email => "admin@example.com",
                    :password => "password",
                    :password_confirmation => "password")

end

When /^I create a new user$/ do
  steps %Q{
    When I fill in "user_first_name" with "John"
    And I fill in "user_last_name" with "Smith"
    And I fill in "user_email" with "john@smith.com"
    And I fill in "user_password" with "12345"
    And I fill in "user_password_confirmation" with "12345"
    And I press "Create User"
  }
end

When /^user 1 creates a new survey$/ do
  steps %Q{
    When I fill in "survey_ei" with "1"
    And I fill in "survey_ft" with "1"
    And I fill in "survey_ns" with "1"
    And I fill in "survey_jp" with "1"
    And I fill in "survey_personality_type" with "ENTP"
    And I fill in "survey_user_id" with "1"
    And I press "Create Survey"
  }
end
