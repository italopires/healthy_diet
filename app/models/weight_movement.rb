class WeightMovement < ApplicationRecord
  belongs_to :diet

  validates :weight, :reference_date, presence: true
end