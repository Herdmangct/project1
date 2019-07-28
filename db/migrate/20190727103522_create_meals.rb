class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :name
      t.integer :quantity_in_stock
      t.integer :quantity_required
      t.float :base_price
      t.float :sales_price
      t.bigint :user_id

      t.timestamps
    end
  end
end
