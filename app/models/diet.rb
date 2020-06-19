class Diet < ApplicationRecord
  has_many :meals, inverse_of: :diet, dependent: :destroy
  belongs_to :user

  validates :description, :meals, :initial_date, :final_date, presence: true
  accepts_nested_attributes_for :meals,
                                reject_if: :all_blank, allow_destroy: true
end