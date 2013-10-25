class Survey < ActiveRecord::Base
  belongs_to :user, :dependent => :destroy
  attr_accessible :ei, :ft, :ns, :jp, :personality_type, :user_id
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
    calculated[:ft] = 0
    calculated[:ns] = 0
    calculated[:jp] = 0
    if params.has_key? :type
      ei = params[:type].split("")[0]
      ns = params[:type].split("")[1]
      ft = params[:type].split("")[2]
      jp = params[:type].split("")[3]
      if ei == "E" || ei == "e"
        calculated[:ei] += 1
      else
        calculated[:ei] -= 1
      end
      if ft == "T" || ft == "t"
        calculated[:ft] += 1
      else
        calculated[:ft] -= 1
      end
      if ns == "S" || ns == "s"
        calculated[:ns] += 1
      else
        calculated[:ns] -= 1
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
          calculated[:ft] = calculated[:ft]+value.to_i
        end
        if( /SN-\d*/.match(key))
          calculated[:ns] = calculated[:ns]+value.to_i
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
    if(calculated[:ns] >= 0)
      calculated[:personality_type] << 'S'
    else
      calculated[:personality_type] << 'N'
    end
    if(calculated[:ft] >= 0)
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
