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

When /^I sign up as "(.*?)"$/ do |name|
#When /^I sign in as "(.*?)"$/ do |arg1|

  steps %Q{
    When I fill in "user_first_name" with "#{name}"
    And I fill in "user_last_name" with "#{name}"
    And I fill in "user_email" with "#{name}@#{name}.#{name}"
    And I fill in "user_password" with "#{name}"
    And I fill in "user_password_confirmation" with "#{name}"
    And I press "Submit"
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
  responses = User.find_by_email("mccormack@berkeley.edu").survey.responses
  responses.should_not == nil
  responses.size.should > 0
end

Then /^the survey for "(.*)" should have recorded the responses$/ do |name|
  email = %Q{#{name}@#{name}.#{name}}
  puts %Q{#{name}}
  responses = User.find_by_first_name(%Q{#{name}}).survey.responses
  responses.should_not == nil
  responses.size.should > 0
end

Then /^the survey for "(.*)" should have the response for (.*) as (.*)$/ do |name, question, response|
  puts name
  user = User.find_by_first_name(%Q{#{name}})
  user.survey.responses.has_key?(question).should == true
  user.survey.responses[question].should == response
end
Then /^the survey response for (.*) should be (.*)$/ do |elt1, elt2|
  User.find_by_email("mccormack@berkeley.edu").survey.responses.has_key?(elt1).should == true
  User.find_by_email("mccormack@berkeley.edu").survey.responses[elt1].should == elt2
end

