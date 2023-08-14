class JobController < ApplicationController
    # def send_email
    #     user = current_user
    #     UserMailer.send_email_to_all_users(user).deliver_now  
    # end 

      def new_email
        @subject = ""
        @body = ""
      end
    
      def send_email
        subject = params[:subject]
        body = params[:body]
        user = current_user
        recipients = user.friends.pluck(:email)
        UserMailer.send_email_to_all_users(recipients, subject, body).deliver_now
    
        redirect_to root_path, notice: "Email sent successfully."
      end

end
