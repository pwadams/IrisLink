class DoctorMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email(doctor)
    @url  = 'http://example.com/login'
    mail(to: doctor.email, subject: 'Your patient has completed the Locus of Control Survey')
  end
end
