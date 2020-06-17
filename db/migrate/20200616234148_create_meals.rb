class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.datetime :schedule_time
      t.string :description
      t.references :diet, foreign_key: true
      t.string :kind
    end
  end
end
