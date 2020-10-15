class User < ApplicationRecord
    has_secure_password
    has_many :workouts
    has_many :trainers, through: :workouts
    
    validates :username, :email, presence: true
    validates :username, :email, uniqueness: true
    validates :password, confirmation: true
    validates :password_confirmation, presence: true

end
