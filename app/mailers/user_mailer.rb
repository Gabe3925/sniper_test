class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'
 
  def welcome_email(user)
    @user = user
    @url  = 'http://Sniper.com/login'
    mail(to: @user.email, subject: 'Welcome to Sniper!')
  end

end


