class CreateFoodOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :food_options do |t|
      t.string :description
    end
  end
end
