class Diet < ApplicationRecord
  has_many :meals, inverse_of: :diet, dependent: :destroy
  has_many :weight_movements, dependent: :destroy
  belongs_to :user

  validates :description, :meals, :initial_date, :final_date, :goal_weight, presence: true
  accepts_nested_attributes_for :meals,
                                reject_if: :all_blank, allow_destroy: true
end