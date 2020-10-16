class Review < ApplicationRecord
    belongs_to :trainer
    belongs_to :reviewer, class_name: "User"
end
