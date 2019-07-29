class DropIngredientsMeals < ActiveRecord::Migration[5.2]
  def change
    drop_join_table(:ingredients, :meals) do |t|
      t.bigint :ingredient_id, :null => false
      t.bigint :meal_id, :null => false
    end
  end
end
