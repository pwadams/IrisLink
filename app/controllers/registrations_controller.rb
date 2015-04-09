class RegistrationsController < ApplicationController

  def index
    @patient = Patient.all
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(params.require(:patient).permit(:first_name, :last_name, :email, :password, :password_confirmation))
    if @patient.save
      session[:patient_id] = @patient.id
    flash[:notice] = "#{@patient.full_name}, Thank you for registering for the survey."
    redirect_to new_survey_path
    else
    render :new
    end
  end
end
