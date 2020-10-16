class Review < ApplicationRecord
    belongs_to :trainer
    belongs_to :reviewer, class_name: "User"

    validates :rating, :content, presence: true
    validates :rating, numericality: { less_than_or_equal_to: 5, greater_than: 0, only_integer: true}

    def self.average_rating
        average(:rating)
    end
end
