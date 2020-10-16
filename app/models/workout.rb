class Workout < ApplicationRecord
    belongs_to :user
    belongs_to :trainer

    validates :name, :workout_type, :time, :level, presence: true
    validates :name, length: {minimum: 3, too_long: "%{count} is the least allowed"}

    #accepts_nested_attributes_for :trainer

    scope :order_by_time, -> {order(:time)}
    #scope :shorter_workouts, -> {where("time < ?", 35)}
    scope :beginner, -> {where(level: "Beginner")}
    scope :intermediate, -> {where(level: "Intermediate")}
    scope :advanced, -> {where(level: "Advanced")}
    scope :search_by_time, -> (workout_type) {where("workout_type = ?", workout_type)}

    def trainer_attributes=(attributes)
        trainer = Trainer.find_or_create_by(attributes)
        self.trainer = trainer if trainer.valid?
    end

    # def self.order_by_time
    #     order(time: :asc)
    # end
end
