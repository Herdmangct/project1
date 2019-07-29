class CreateQuantities < ActiveRecord::Migration[5.2]
  def change
    create_table :quantities do |t|
      t.bigint :meal_id
      t.bigint :ingredient_id
      t.float :measurement
      t.string :unit_of_measurement

      t.timestamps
    end
  end
end
