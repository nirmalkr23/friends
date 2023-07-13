class User < ApplicationRecord
  after_create :send_wel_email

  private
  def send_wel_email
    UserMailer.welcome_email(self).deliver_now
  end
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :friends
end
