require 'bcrypt'

class UserMailer < ApplicationMailer
  default from: Rails.configuration.globals['from_email']
  include BCrypt
  def verification_email
    @email = params[:email]
    @currTime = params[:currTime]

    @emil_crypt = Password.create(@email)
    @key = Password.create(@email+@currTime);
    @time_crypt = Password.create(@currTime)
    @link = Rails.configuration.globals['root'].to_s+"/verified_emails/verify?email="+@emil_crypt+"&time_stamp="+@time_crypt;
    mail(to: @email, subject: 'Welcome to My Awesome Site')
  end
end
