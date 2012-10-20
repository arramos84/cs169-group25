require 'spec_helper'

describe User do
  
  before { @user = User.new(first_name: "Charles", last_name: "Smith", email: "charlessmith@aol.com") }

  subject { @user }

  it { should respond_to(:first_name) }
  it { should respond_to(:last_name) }
  it { should respond_to(:email) }
   
  describe "when first name is not present" do
    before @user.first_name = " "
    it { should_not be_valid }
  end
  
  describe "when last name is not present" do
    before @user.last_name = " "
    it { should_not be_valid }
  end
  
  describe "when email is not present" do
    before @user.email = " "
    it { should_not be_valid }
  end
  
  describe "when first name is too long" do
    before @user.first_name = "a" * 51
    it { should_not be_valid }
  end
  
end
