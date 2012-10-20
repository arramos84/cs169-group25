class SurveyController < ApplicationController
  def new
    #@survey = Survey.new
  end

  def create
    if Survey.create_survey(params[:survey])
      redirect_to root_path
    else
      render :new
    end
  end

end

