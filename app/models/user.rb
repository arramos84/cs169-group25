class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation
  #magic to require a password, make sure passwords match, authenticate
  has_secure_password
  
  before_save { |user| user.email = email.downcase } #help ensure uniqueness
  before_save :create_remember_token
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :first_name, presence: true, length: {maximum: 50 }
  validates :last_name, presence: true, length: { maximum: 50 }
  validates :password, presence: true, length: { minimum: 5 }
  validates :password_confirmation, presence: true
  
  def self.get_full_name
    return :first_name + " " + :last_name
  end  
  
  private
  
    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
  
end
