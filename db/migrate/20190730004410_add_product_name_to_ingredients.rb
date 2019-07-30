class AddProductNameToIngredients < ActiveRecord::Migration[5.2]
  def change
    add_column :ingredients, :product_name, :string
  end
end
