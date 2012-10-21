class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def show
    @user = current_user
  end
  
  def destroy
  end
  

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = 'User was successfully created'
      sign_in @user
      redirect_to :survey
    else
      render :signup
    end    
end

end
