class SurveysController < ApplicationController

  def new
    @survey = Survey.new
  end

  def create
    @survey = Survey.new(survey_params)
    if @survey.save
      flash[:notice] = "You're survey has been submitted"
      redirect_to survey_path(@survey)
    else
      render :new
    end
  end

private

  def survey_params
    params.require(:survey).permit(:patient_id, :q1, :q2, :q3, :q4, :q4, :q5, :q6, :q7, :q8, :q9, :q10, :q11, :q12, :q13, :q14, :q15, :q16, :q17, :q18)
  end
end
