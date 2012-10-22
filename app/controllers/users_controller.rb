class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    @user = current_user
    if !@user.has_completed_survey?
      redirect_to :survey
    end

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
      redirect_to :signup
      flash[:alert] = "User was not successfully created"
    end
end

end
