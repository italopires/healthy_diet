class AddUserToDiet < ActiveRecord::Migration[5.2]
  def change
    add_reference :diets, :user, foreign_key: true, index: true, null: false
  end
end
