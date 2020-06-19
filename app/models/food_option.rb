class FoodOption < ApplicationRecord
  belongs_to :user

  validates :description, presence: true

  def to_s
    description
  end
end