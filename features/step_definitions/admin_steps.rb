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

When /^I create a new profile$/ do
  steps %Q{
    When I fill in "profile_step_1" with "step 1"
    And I fill in "profile_step_2" with "step 2"
    And I fill in "profile_step_3" with "step 3"
    And I fill in "profile_step_4" with "step 4"
    And I fill in "profile_step_5" with "step 5"
    And I fill in "profile_body" with "lorem ipsum"
    And I fill in "profile_video_link" with "1"
    And I fill in "profile_personality_type" with "bro"
    And I press "Create Profile"
  }
end

Then /^the survey should have recorded the responses$/ do

end

