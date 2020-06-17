class Meal < ApplicationRecord
  belongs_to :diet
  has_many :food_option_meals, inverse_of: :meal, dependent: :destroy

  accepts_nested_attributes_for :food_option_meals,
                                reject_if: :all_blank, allow_destroy: true
end