class AddUsersIngredientNameToQuantities < ActiveRecord::Migration[5.2]
  def change
    add_column :quantities, :users_ingredient_name, :string
  end
end
