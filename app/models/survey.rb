class Survey < ActiveRecord::Base
  belongs_to :user, :dependent => :destroy
  attr_accessible :ei, :tf, :sn, :jp, :personality_type, :user_id
  serialize :responses
  @@last_test_result = nil



#@survey = Survey.create! :user_id => @user.id, :ei => 1, :sn => 1, :tf => 1, :jp => 1, :personality_type => "ESTJ"
  def self.create_blank_survey(type)
    if !self.personality_types.include?(type.upcase)
      return nil
    end
    @id = :user_id

    @ei = 0
    @sn = 0
    @tf = 0
    @jp = 0

=begin
    @ei = 1 unless type[0] == "I"
      @ei = -1

    @sn = 1 unless type[1] == "N"
      @sn = -1

    @tf = 1 unless type[2] == "F"
      @tf = -1

    @jp = 1 unless type[3] == "P"
      @jp = -1
=end

    self.create! :user_id => @id, :ei => @ei, :sn => @sn, :tf => @tf, :jp => @jp, :personality_type => type

  end

  
  def self.last_test_result=(arg)
    @@last_test_result = arg
  end
  
  def self.last_test_result
    @@last_test_result
  end

  def self.personality_types
    return ["ENFJ", "INFJ", "INTJ", "ENTJ", "ENFP", "INFP", "INTP", "ENTP", "ESFP", "ISFP", "ISTP", "ESTP", "ESFJ", "ISFJ", "ISTJ", "ESTJ"]
  end

  def self.organize(params)
    calculated = {}
    user_responses = {}
    calculated[:ei] = 0
    calculated[:tf] = 0
    calculated[:sn] = 0
    calculated[:jp] = 0
    if params.has_key? :type
      ei = params[:type].split("")[0]
      sn = params[:type].split("")[1]
      tf = params[:type].split("")[2]
      jp = params[:type].split("")[3]
      if ei == "E" || ei == "e"
        calculated[:ei] += 1
      else
        calculated[:ei] -= 1
      end
      if tf == "T" || tf == "t"
        calculated[:tf] += 1
      else
        calculated[:tf] -= 1
      end
      if sn == "S" || sn == "s"
        calculated[:sn] += 1
      else
        calculated[:sn] -= 1
      end
      if jp == "J" || jp == "j"
        calculated[:jp] += 1
      else
        calculated[:jp] -= 1
      end
    else
      params.each do |key,value|
        if( /EI-\d*/.match(key))
          calculated[:ei] = calculated[:ei]+value.to_i
        end
        if( /TF-\d*/.match(key))
          calculated[:tf] = calculated[:tf]+value.to_i
        end
        if( /SN-\d*/.match(key))
          calculated[:sn] = calculated[:sn]+value.to_i
        end
        if( /JP-\d*/.match(key))
          calculated[:jp] = calculated[:jp]+value.to_i
        end
        user_responses[key] = value
      end
      @@last_test_result = user_responses
    end
    if(calculated[:ei] >= 0)
      calculated[:personality_type] = 'E'
    else
      calculated[:personality_type] = 'I'
    end
    if(calculated[:sn] >= 0)
      calculated[:personality_type] << 'S'
    else
      calculated[:personality_type] << 'N'
    end
    if(calculated[:tf] >= 0)
      calculated[:personality_type] << 'T'
    else
      calculated[:personality_type] << 'F'
    end
    if(calculated[:jp] >= 0)
      calculated[:personality_type] << 'J'
    else
      calculated[:personality_type] << 'P'
    end
    return calculated
  end

end
