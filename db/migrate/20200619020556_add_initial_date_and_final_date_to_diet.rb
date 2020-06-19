class AddInitialDateAndFinalDateToDiet < ActiveRecord::Migration[5.2]
  def change
    add_column :diets, :initial_date, :date, null: false
    add_column :diets, :final_date, :date, null: false
  end
end
