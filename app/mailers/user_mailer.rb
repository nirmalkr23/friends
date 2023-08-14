class UserMailer < ApplicationMailer
    default from: 'neerunirmal23@gmail.com' # Replace with your email address

  def welcome_email(user)
    @user = user
    @url = 'http://[::1]:3000/users/sign_in' # Replace with the appropriate URL
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

  def send_email_to_all_users(recipients,subject,body)
    @body=body 
    mail(to: recipients,subject: subject)do |format|
      format.text { render plain: body }
      format.html { render html: body.html_safe }
    end
  end
end
