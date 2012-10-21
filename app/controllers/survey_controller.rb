class SurveyController < ApplicationController
  def new

  end

  def create
    @survey_params = Survey.organize(params[:input])
    @survey_params[:user_id] = current_user.id

    @survey = Survey.new(@survey_params)
    if @survey.save
      flash[:notice] = "Welcome to LeadU!"
      redirect_to root_path
    else
      flash[:notice] = "You may have entered a field wrong"
      render :survey
    end
  end

  def destroy
  end

end
