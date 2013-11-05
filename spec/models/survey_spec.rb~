require 'spec_helper'

describe Survey do
  
  it "should convert test results to correct personality type" do
    @params = { 'EI-1' => 1, 'EI-2' => -1, 'EI-3' => -1, 'FT-1' => 1, 'FT-2' => 1, 'FT-3' => 1, 'NS-1' => -1, 'NS-2' => -1, 'NS-3' => -1, 'JP-1' => -1, 'JP-2' => -1, 'JP-3' => 1, 'JP-4' => 1}   
    Survey.organize(@params).should == {:ei=>-1, :ft=>3, :ns=>-3, :jp=>0, :personality_type=>"INTJ"} 
  end
  
  before { @survey = Survey.new(user_id: 1, ei: 4, ft: 2, ns: 3, jp: 6, personality_type: 'ENTP') }
  
  subject { @survey }

  it { should respond_to(:user_id) }
  it { should respond_to(:personality_type) }
  it { should respond_to(:ei) }
  it { should respond_to(:ft) }
  it { should respond_to(:ns) }
  it { should respond_to(:jp) }
  
  
end
