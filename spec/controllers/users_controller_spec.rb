require 'spec_helper'

describe UsersController do
  describe 'handling third party authentication' do
    before do
      request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:facebook]
    end
    context 'given user already exists' do
      it 'should sign in exiting user' do
        @user = create :user
        visit '/'
        
        click_link 'Sign In'
        subject.should_receive(:create_with_third_party_auth)
        #print page.body
        
        #User.stub(:where).and_return(@user)
        #subject.should_receive(:sign_in).with(@user)
        get :survey, { :id => @user.id } 
      end

    end
    context 'given it is a new user' do
      it 'should call create' do
        visit '/' 
        click_link "Sign In"
        
        
      end
    end
  end
end