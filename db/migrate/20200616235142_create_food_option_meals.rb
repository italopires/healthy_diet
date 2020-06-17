class CreateFoodOptionMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :food_option_meals do |t|
      t.string :description
      t.references :meal, foreign_key: true
      t.references :food_option, foreign_key: true
    end
  end
end
