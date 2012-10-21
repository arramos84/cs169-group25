class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def destroy
  end
  

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = 'User was successfully created'
      redirect_to :survey
    else
      render :signup
    end    
end

end
