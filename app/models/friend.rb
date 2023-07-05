class Friend < ApplicationRecord
    validates :first_name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :last_name, presence: true
    validates :phone_number, presence: true, length: { minimum: 10, maximum: 10 }

    validate :CheckNamePresence

    private
    def CheckNamePresence
        first_name=Friend.where("first_name =?",first_name)
        errors.add(:first_name,"Already taken")
    end
end
