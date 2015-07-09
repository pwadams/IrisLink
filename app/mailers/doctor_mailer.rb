class DoctorMailer < ApplicationMailer
  default from: "pwadams@me.com"

  def welcome_email(doctor)
    @doctor = doctor
    mail(to: 'doctor.email', subject: 'Your patient has completed the Locus of Control Survey')
  end
end
