class UsersController < ApplicationController

  def new
    @sign_up = true
    @user = User.new
  end

  def show
    @user = current_user
    if !@user.has_completed_survey?
      redirect_to :survey
    end
    @personality_db = Profile.find_by_personality_type(@user.survey.personality_type)
    #puts @personality_db.inspect
    @video_url = /v=(.*)/.match(@personality_db.video_link)[1]
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
      flash[:alert] = "Account could not successfully created because:\n"
      @user.errors.full_messages.each { |x| flash[:alert] << x + ",\n" }
    end
end

end
