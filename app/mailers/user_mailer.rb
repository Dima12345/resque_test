class UserMailer < ApplicationMailer
  default from: 'gunosada1@mail.ru'
 
  def welcome_email#(user)
    # @user = user
    @url  = 'http://example.com/login'
    mail(to:'Gunosada1@gmail.com', subject: 'Welcome to My Awesome Site')
  end
end
