# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

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