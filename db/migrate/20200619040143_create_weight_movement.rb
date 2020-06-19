class CreateWeightMovement < ActiveRecord::Migration[5.2]
  def change
    create_table :weight_movements do |t|
      t.float :weight, null: false
      t.date :reference_date, null: false
      t.references :diet, foreign_key: true
    end
  end
end
