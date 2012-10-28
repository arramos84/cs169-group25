class SurveyController < ApplicationController
  def new

  end

  def create
    if params.has_key?(:type) && !Survey.personality_types.include?(params[:type][:type].upcase)
      flash[:notice] = "That is not a correct personality type"
      redirect_to :survey and return
    elsif params.has_key?(:type)
      @survey_params = Survey.organize(params[:type])
      @survey_params[:user_id] = current_user.id
    else
      @survey_params = Survey.organize(params[:input])
      @survey_params[:user_id] = current_user.id
    end

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
