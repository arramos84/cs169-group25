class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def destroy
  end
  

  def create
    
    if User.create_user(params[:user])
      # auto login
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

end
