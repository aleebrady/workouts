class Trainer < ApplicationRecord  
    has_many :workouts
    has_many :users, through: :workouts

    validates :name, uniqueness: true
    validates :name, :skills, presence: true
end
