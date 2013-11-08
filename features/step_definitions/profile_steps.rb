Given /^all the profiles exist$/ do
   body_text = "Lorem ipsum"
   Profile.create( :personality_type => 'ISTJ', :body => body_text, :video_link => 'http://www.youtube.com/watch?v=bIchxfE8TnE', :step_1 => 'step 1 text', :step_2 => 'step 2 text', :step_3 => 'step 3 text',
                :step_4 => 'step 4 text', :step_5 => 'step 1 text')
    Profile.create( :personality_type => 'ISFJ', :body => body_text, :video_link => 'http://www.youtube.com/watch?v=bIchxfE8TnE', :step_1 => 'step 1 text', :step_2 => 'step 2 text', :step_3 => 'step 3 text',
            :step_4 => 'step 4 text', :step_5 => 'step 1 text')
    Profile.create( :personality_type => 'INFJ', :body => body_text, :video_link => 'http://www.youtube.com/watch?v=bIchxfE8TnE', :step_1 => 'step 1 text', :step_2 => 'step 2 text', :step_3 => 'step 3 text',
            :step_4 => 'step 4 text', :step_5 => 'step 1 text')
    Profile.create( :personality_type => 'INTJ', :body => body_text, :video_link => 'http://www.youtube.com/watch?v=bIchxfE8TnE', :step_1 => 'step 1 text', :step_2 => 'step 2 text', :step_3 => 'step 3 text',
            :step_4 => 'step 4 text', :step_5 => 'step 1 text')
    Profile.create( :personality_type => 'ISTP', :body => body_text, :video_link => 'http://www.youtube.com/watch?v=bIchxfE8TnE', :step_1 => 'step 1 text', :step_2 => 'step 2 text', :step_3 => 'step 3 text',
            :step_4 => 'step 4 text', :step_5 => 'step 1 text')
    Profile.create( :personality_type => 'ISFP', :body => body_text, :video_link => 'http://www.youtube.com/watch?v=bIchxfE8TnE', :step_1 => 'step 1 text', :step_2 => 'step 2 text', :step_3 => 'step 3 text',
            :step_4 => 'step 4 text', :step_5 => 'step 1 text')
    Profile.create( :personality_type => 'INFP', :body => body_text, :video_link => 'http://www.youtube.com/watch?v=bIchxfE8TnE', :step_1 => 'step 1 text', :step_2 => 'step 2 text', :step_3 => 'step 3 text',
            :step_4 => 'step 4 text', :step_5 => 'step 1 text')
    Profile.create( :personality_type => 'INTP', :body => body_text, :video_link => 'http://www.youtube.com/watch?v=bIchxfE8TnE', :step_1 => 'step 1 text', :step_2 => 'step 2 text', :step_3 => 'step 3 text',
            :step_4 => 'step 4 text', :step_5 => 'step 1 text')
    Profile.create( :personality_type => 'ESTP', :body => body_text, :video_link => 'http://www.youtube.com/watch?v=bIchxfE8TnE', :step_1 => 'step 1 text', :step_2 => 'step 2 text', :step_3 => 'step 3 text',
            :step_4 => 'step 4 text', :step_5 => 'step 1 text')
    Profile.create( :personality_type => 'ESFP', :body => body_text, :video_link => 'http://www.youtube.com/watch?v=bIchxfE8TnE', :step_1 => 'step 1 text', :step_2 => 'step 2 text', :step_3 => 'step 3 text',
            :step_4 => 'step 4 text', :step_5 => 'step 1 text')
    Profile.create( :personality_type => 'ENFP', :body => body_text, :video_link => 'http://www.youtube.com/watch?v=bIchxfE8TnE', :step_1 => 'step 1 text', :step_2 => 'step 2 text', :step_3 => 'step 3 text',
            :step_4 => 'step 4 text', :step_5 => 'step 1 text')
    Profile.create( :personality_type => 'ENTP', :body => body_text, :video_link => 'http://www.youtube.com/watch?v=bIchxfE8TnE', :step_1 => 'step 1 text', :step_2 => 'step 2 text', :step_3 => 'step 3 text',
            :step_4 => 'step 4 text', :step_5 => 'step 1 text')
    Profile.create( :personality_type => 'ESTJ', :body => body_text, :video_link => 'http://www.youtube.com/watch?v=bIchxfE8TnE', :step_1 => 'step 1 text', :step_2 => 'step 2 text', :step_3 => 'step 3 text',
            :step_4 => 'step 4 text', :step_5 => 'step 1 text')
    Profile.create( :personality_type => 'ESFJ', :body => body_text, :video_link => 'http://www.youtube.com/watch?v=bIchxfE8TnE', :step_1 => 'step 1 text', :step_2 => 'step 2 text', :step_3 => 'step 3 text',
            :step_4 => 'step 4 text', :step_5 => 'step 1 text')
    Profile.create( :personality_type => 'ENFJ', :body => body_text, :video_link => 'http://www.youtube.com/watch?v=bIchxfE8TnE', :step_1 => 'step 1 text', :step_2 => 'step 2 text', :step_3 => 'step 3 text',
            :step_4 => 'step 4 text', :step_5 => 'step 1 text')
    Profile.create( :personality_type => 'ENTJ', :body => body_text, :video_link => 'http://www.youtube.com/watch?v=bIchxfE8TnE', :step_1 => 'step 1 text', :step_2 => 'step 2 text', :step_3 => 'step 3 text',
            :step_4 => 'step 4 text', :step_5 => 'step 1 text')

end

Given /^the user with email "(.*)" has personality type "(.*)"$/ do |email, type|
  User.find_by_email(email).survey = Survey.find_by_personality_type("ENTP")
end

And /^I sign in$/ do
  steps %Q{
    When I fill in "session_email" with "mccormack@berkeley.edu"
    And I fill in "session_password" with "12345"
    And I press "Submit"
  }
end

And /^I answer a few of the questions$/ do
    choose('input_EI-1_1')
    choose('input_EI-2_1')
    choose('input_EI-3_1')
    choose('input_EI-4_1')
    choose('input_EI-5_1')
    choose('input_EI-6_1')
end

    
Given /^I answer a majority of the questions$/ do
    choose('input_EI-1_1')
    choose('input_EI-2_1')
    choose('input_EI-3_1')
    choose('input_EI-4_1')
    choose('input_EI-5_1')
    choose('input_EI-6_1')
    choose('input_EI-7_1')
    choose('input_EI-8_1')
    choose('input_EI-9_1')
    choose('input_EI-10_1')
    choose('input_SN-1_1')
    choose('input_SN-2_1')
    choose('input_SN-3_1')
    choose('input_SN-4_1')
    choose('input_SN-5_1')
    choose('input_SN-6_1')
    choose('input_SN-7_1')
    choose('input_SN-8_1')
    choose('input_SN-9_1')
    choose('input_SN-10_1')
    choose('input_SN-11_1')
    choose('input_SN-12_1')
    choose('input_SN-13_1')
    choose('input_SN-14_1')
    choose('input_SN-15_1')
    choose('input_SN-16_1')
    choose('input_SN-17_1')
    choose('input_SN-18_1')
    choose('input_SN-19_1')
    choose('input_SN-20_1')
    choose('input_JP-1_1')
    choose('input_JP-2_1')
    choose('input_JP-3_1')
    choose('input_JP-4_1')
    choose('input_JP-5_1')
    choose('input_JP-6_1')
    choose('input_JP-7_1')
    choose('input_JP-8_1')
    choose('input_JP-9_1')
    choose('input_JP-10_1')
    choose('input_JP-11_1')
    choose('input_JP-12_1')
    choose('input_JP-13_1')
    choose('input_JP-14_1')
    choose('input_JP-15_1')
    choose('input_JP-16_1')
    choose('input_JP-17_1')
    choose('input_JP-18_1')
    choose('input_JP-19_1')
    choose('input_JP-20_1')
end


