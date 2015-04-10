class PatientsController < ApplicationController

  before_action :authenticate_user
  before_action :find_doctor
  before_action :current_user_is_admin, only: [:index, :show, :destroy]

  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find(params[:w])
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = @doctor.patients.new(patient_params)
    if @doctor.patient.save
      flash[:notice] = "User was successfully created"
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @patient = Patient.find(params[:id])
    @patient.destroy
    flash[:notice] = "Patient was successfully deleted"
    redirect_to doctor_patients_path(@doctor)
  end


  private

  def patient_params
    params.require(:patient).permit(:first_name, :last_name, :date_of_birth,  :email, :password, :password_confirmation, :doctor_id)
  end

  def find_doctor
    @doctor = Doctor.find(params[:doctor_id])
  end
end
