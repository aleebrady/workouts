class Workout < ApplicationRecord
    # belongs_to :user
    # belongs_to :trainer

    validates :name, :workout_type, :time, :level, presence: true 
end
