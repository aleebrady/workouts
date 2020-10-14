class Workout < ApplicationRecord
    # belongs_to :user
    # belongs_to :trainer

    validates :name, :workout_type, :time, :level, presence: true 

    scope :order_by_time, -> {order(:time)}
    #scope :shorter_workouts, -> {where("time < ?", 35)}
    scope :beginner, -> {where(level: "Beginner")}
    scope :intermediate, -> {where(level: "Intermediate")}
    scope :advanced, -> {where(level: "Advanced")}

    # def self.order_by_time
    #     order(time: :asc)
    # end
end
