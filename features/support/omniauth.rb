Before('@omniauth_test') do  
  OmniAuth.config.test_mode = true  

  # the symbol passed to mock_auth is the same as the name of the provider set up in the initializer
  OmniAuth.config.mock_auth[:facebook] = {
   :provider => 'facebook',
   :uid => '1234567',
   :credentials => {
    :token => 'asdf12341'
   },
   :info => {
     :nickname => 'test',
     :email => 'info@gmail.com',
     :name => 'Test User',
     :first_name => 'Test',
     :last_name => 'User',
     :location => 'California',
     :verified => true
    }.stringify_keys!
  }.stringify_keys!
end

After('@omniauth_test') do
  OmniAuth.config.test_mode = false
end