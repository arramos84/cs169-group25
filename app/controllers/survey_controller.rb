class SurveyController < ApplicationController

  before_filter :auth_user

  def new

  end

  def skip_survey
    puts "params: "
    puts params
    if !params.has_key?(:entered_type) or !Survey.personality_types.include?(params[:entered_type].upcase)
      flash[:notice] = "That is not a correct personality type"
      redirect_to :survey and return
    end
    @user = current_user
    current_user.entered_type = params[:entered_type]
    current_user.entered_type
    @personality_db = Profile.find_by_personality_type(current_user.entered_type) 
    #puts @personality_db.inspect

    @body = @personality_db.body
    @step_1 = @personality_db.step_1
    @step_2 = @personality_db.step_2
    @step_3 = @personality_db.step_3
    @step_4 = @personality_db.step_4
    @step_5 = @personality_db.step_5

  end

  def create
    puts "params: "
    puts params
    if params.has_key?(:type) && !Survey.personality_types.include?(params[:type][:type].upcase)
      flash[:notice] = "That is not a correct personality type"
      redirect_to :survey and return
    elsif params.has_key?(:type)
      puts "params.haskey(:type)"
      @survey_params = Survey.organize(params[:type])
      @survey_params[:user_id] = current_user.id
    else
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
    current_user.survey = @survey

    # Kludgy way of getting survey responses
    if Survey.last_test_result != nil
      @survey.responses = Survey.last_test_result
      Survey.last_test_result = nil
      SurveyMetrics.tally_survey_results(@survey.responses, @survey_params)
    end

    if @survey.save
      flash[:success] = "Welcome to LeadU!"
      redirect_to home_path
    else
      flash[:notice] = "You may have entered a field wrong"
      render :survey
    end
  end

  def destroy
  end

end
