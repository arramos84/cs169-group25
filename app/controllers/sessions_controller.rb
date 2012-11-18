class SessionsController < ApplicationController
  def create
    user = User.find_by_email(params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in_user user
      redirect_to :home

    else
      flash[:error] = 'Invalid email and/or password! Please try again!'
      redirect_to :login
      #render :new
    end
  end

  def destroy
    flash[:notice] = "Signout successful"
    sign_out_user
    redirect_to :root #:home #root_path #root_url?
  end


end
