class CreateIngredientsMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients_meals, :id => false do |t|
      t.bigint :ingredient_id
      t.bigint :meal_id
    end
  end
end
