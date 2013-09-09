class SurveyController < ApplicationController

  before_filter :auth_user

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
      puts "HELLLOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO"
      puts !params[:input]
      puts params[:input].length < 50
      puts params[:input][:manual] == nil
      if !params[:input] or params[:input].length < 50 #or params[:input][:manual] == nil
        flash[:notice] = "Please complete the majority of the survey to generate an accurate personality match for you!"
        redirect_to :survey and return
      end
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

    current_user.survey = @survey
  end

  def destroy
  end

end
