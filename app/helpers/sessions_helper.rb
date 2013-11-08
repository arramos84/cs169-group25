module SessionsHelper

  def sign_in_user(user)
    cookies.permanent[:remember_token] = user.remember_token
    self.current_user = user
  end

  def signed_in?
    puts current_user
    !current_user.nil?
  end
  
  def professor?
    current_user.professor
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user
    @current_user ||= User.find_by_remember_token(cookies[:remember_token])
  end

  def sign_out_user
    self.current_user = nil
    cookies.delete(:remember_token)
  end

end
