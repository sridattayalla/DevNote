require 'bcrypt'

class VerifiedEmailsController < ApplicationController
    include BCrypt

    def index
        
    end

    def new
        @email = params[:email]
        @exist = false
        if(VerifiedEmail.exists?(@email))
            @exist = true
        else
            @currentTime = Time.now.to_i.to_s
            UserMailer.with(email:@email, currTime: @currentTime).verification_email.deliver_later
        end
    end

    def verify
        @email = Password.("$2a$12$K0ByB.6YI2/OYrB4fQOYLe6Tv0datUVf6VZ/2Jzwm879BW5K1cHey")
        @time_stamp = Password.new(params[:time_stamp])
    end
end
