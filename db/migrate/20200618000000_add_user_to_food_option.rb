class AddUserToFoodOption < ActiveRecord::Migration[5.2]
  def change
    add_reference :food_options, :user, foreign_key: true, index: true, null: false
  end
end
