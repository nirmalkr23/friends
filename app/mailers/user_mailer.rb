class UserMailer < ApplicationMailer
    default from: 'neerunirmal23@gmail.com' # Replace with your email address

  def welcome_email(user)
    @user = user
    @url = 'http://[::1]:3000/users/sign_in' # Replace with the appropriate URL
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

  def send_email_to_all_users(user)
    @users = user
      mail(to: user.email, subject: "Hello from UserMailer!")
  end
end
