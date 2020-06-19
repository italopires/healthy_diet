class AddGoalWeightToDiet < ActiveRecord::Migration[5.2]
  def change
    add_column :diets, :goal_weight, :integer, null: false
  end
end
