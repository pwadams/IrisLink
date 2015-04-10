class AuthenticationController < ApplicationController

  def new
  end

  def create
    patient = Patient.find_by(email: params[:email])
    doctor = Doctor.find_by(email: params[:email])
    if patient && patient.authenticate(params[:password])
      session[:patient_id] = patient.id
      flash[:notice] = "#{patient.full_name}, You have successfully signed in."
      redirect_to root_path
    elsif doctor && doctor.authenticate(params[:password])
      session[:doctor_id] = doctor.id
      flash[:notice] = "Doctor #{doctor.full_name}, You have successfully signed in."
      redirect_to doctor_patients_path(doctor, patient)
    else
      flash[:danger] = "Email/Password combination is invalid."
      render :new
    end
  end

  def destroy
    session.clear
    flash[:notice] = "You have successfully signed out"
    redirect_to root_path
  end
end
