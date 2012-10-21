class SessionsController < ApplicationController
  def create
    user = User.find_by_email(params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash[:error] = 'Invalid email and/or password! Please try again!'
      redirect_to :login      
      #render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
