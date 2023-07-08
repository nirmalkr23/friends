class Friend < ApplicationRecord

    has_one :mobile
    validates :first_name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :last_name, presence: true
    validates :phone_number, presence: true, length: { minimum: 10, maximum: 10 }

    validate :CheckNamePresence, on: :create

    private
    def CheckNamePresence
        existing_friend = Friend.where(first_name: first_name).first
        errors.add(:first_name, "Already taken") if existing_friend
    end

end
