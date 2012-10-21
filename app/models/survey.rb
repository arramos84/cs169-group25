class Survey < ActiveRecord::Base
  belongs_to :user, :dependent => :destroy
  attr_accessible :ei, :ft, :ns, :jp, :personality_type, :user_id

  def self.organize(params)
    calculated = {}
    calculated[:ei] = 0
    calculated[:ft] = 0
    calculated[:ns] = 0
    calculated[:jp] = 0
    params.each do |key,value|      
      if( /EI-\d*/.match(key))
        calculated[:ei] = calculated[:ei]+value.to_i
      end
      if( /FT-\d*/.match(key))
        calculated[:ft] = calculated[:ft]+value.to_i
      end
      if( /NS-\d*/.match(key))
        calculated[:ns] = calculated[:ns]+value.to_i
      end
      if( /JP-\d*/.match(key))
        calculated[:jp] = calculated[:jp]+value.to_i
      end
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
