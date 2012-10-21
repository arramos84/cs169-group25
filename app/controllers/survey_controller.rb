class SurveyController < ApplicationController
  
  def new
  end

  def create
    if Survey.create_survey(params[:survey])
      redirect_to root_path
    else
      render :new
    end
  end
  
  def destroy
  end

end
