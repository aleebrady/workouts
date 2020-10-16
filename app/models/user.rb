class User < ApplicationRecord
    has_many :workouts
    has_many :trainers, through: :workouts
    has_many :reviews, foreign_key: "reviewer_id", class_name: "Review"
    has_many :reviewed_trainers, through: :reviews, source: :trainer

    has_secure_password
    validates :username, :email, presence: true
    validates :username, :email, uniqueness: true
    validates :password, confirmation: true
    validates :password_confirmation, presence: true

end
