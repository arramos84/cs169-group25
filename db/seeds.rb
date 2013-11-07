# IF seed file does not seem to work try the following commands in sequence
# ***************
# rake db:drop
# rake db:create
# rake db:migrate
# rake bootstrap:all
# rake db:seed
# ***************

# All Passwords are "please"

# user@example.com is the teacher
professor = User.create! :first_name => 'John', :last_name => 'Smith', :email => 'user@example.com', :code => "leader_match", :professor => true, :password => 'please', :password_confirmation => 'please'

student1 = User.create! :first_name => 'Dave', :last_name => 'Jenkins', :email => 'user2@example.com', :code => nil, :professor => false, :password => 'please', :password_confirmation => 'please'
student2 = User.create! :first_name => 'Alice', :last_name => 'Hope', :email => 'user3@example.com', :code => nil, :professor => false, :password => 'please', :password_confirmation => 'please'
student3 = User.create! :first_name => 'Hannah', :last_name => 'Montana', :email => 'user4@example.com', :code => nil, :professor => false, :password => 'please', :password_confirmation => 'please'
student4 = User.create! :first_name => 'Kate', :last_name => 'Rittle', :email => 'user5@example.com', :code => nil, :professor => false, :password => 'please', :password_confirmation => 'please'
student5 = User.create! :first_name => 'Andre', :last_name => 'Wheeler', :email => 'user6@example.com', :code => nil, :professor => false, :password => 'please', :password_confirmation => 'please'

## Now these students are conntected to Professor
student2.follow(professor)
student3.follow(professor)
student4.follow(professor)
student5.follow(professor)

## Creates surveys
survey = Survey.create! :user_id => 1, :ei => 1, :ns => 1, :ft => 1, :jp => -1, :personality_type => "ENTP"
survey = Survey.create! :user_id => 2, :ei => 1, :ns => -1, :ft => -1, :jp => -1, :personality_type => "ESFP"
survey = Survey.create! :user_id => 3, :ei => -1, :ns => -1, :ft => -1, :jp => 1, :personality_type => "ISFJ"
survey = Survey.create! :user_id => 4, :ei => 1, :ns => 1, :ft => -1, :jp => 1, :personality_type => "ENFJ"
survey = Survey.create! :user_id => 5, :ei => -1, :ns => -1, :ft => -1, :jp => -1, :personality_type => "ISFP"
survey = Survey.create! :user_id => 6, :ei => -1, :ns => -1, :ft => -1, :jp => 1, :personality_type => "ISFJ"

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



