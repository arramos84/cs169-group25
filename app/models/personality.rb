class Personality < ActiveRecord::Base
  belongs_to :user
  
  attr_accessible :ei, :ft, :jp, :ns, :type
  
end
