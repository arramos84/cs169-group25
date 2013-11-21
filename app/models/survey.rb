class Survey < ActiveRecord::Base
  belongs_to :user, :dependent => :destroy
  attr_accessible :ei, :tf, :sn, :jp, :personality_type, :user_id
  serialize :responses
  @@last_test_result = nil
  
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
      type = params[:type].split("").upcase
      ei = type[0]
      sn = type[1]
      tf = type[2]
      jp = type[3]

      calculated[:ei] -= 1 unless ei == "E"
        calculated[:ei] += 1
      calculated[:sn] -= 1 unless sn == "S"
        calculated[:sn] += 1
      calculated[:tf] -= 1 unless tf == "F"
        calculated[:tf] += 1
      calculated[:jp] -= 1 unless jp == "J"
        calculated[:jp] += 1

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
