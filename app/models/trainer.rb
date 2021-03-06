class Trainer < ApplicationRecord  
    has_many :workouts
    has_many :users, through: :workouts
    has_many :reviews
    has_many :reviewers, through: :reviews, source: :reviewer


    validates :name, uniqueness: true
    validates :name, :skills, presence: true
end
