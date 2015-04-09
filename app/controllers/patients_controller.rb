class PatientsController < ApplicationController

  before_action :authenticate_user


  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find(params[:id])
    @survey = @patient.survey
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    if @pateint.save
      flash[:notice] = "User was successfully created"
      redirect_to root_path
    else
      render :new
    end
  end


  private

  def patient_params
    params.require(:patient).permit(:first_name, :last_name, :email, :password, :password_confirmation)

  end
end
