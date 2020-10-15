class User < ApplicationRecord
    has_many :workouts
    has_many :trainers, through: :workouts
    has_secure_password
    validates :username, :email, presence: true
    validates :username, :email, uniqueness: true
    validates :password, confirmation: true
    validates :password_confirmation, presence: true

end
