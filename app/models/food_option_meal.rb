class FoodOptionMeal < ApplicationRecord
  belongs_to :meal
  belongs_to :food_option

  # validates :description, presence: true
end