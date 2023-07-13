class JobController < ApplicationController

    def send_email
        @users = User.all
        @users.each do |user|
            UserMailer.send_email_to_all_users(user).deliver_now
        end   
    end
end
