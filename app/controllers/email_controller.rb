class EmailController < ApplicationController
  def new_eamil
    @subject = ""
        @body = ""
  end

  def send_email_to_specific
    subject = params[:subject]
        body = params[:body]
        recipients = user.friends.pluck(:email)
        UserMailer.send_email_to_all_users(recipients, subject, body).deliver_now

        redirect_to root_path, notice: "Email sent successfully."
  end
end
