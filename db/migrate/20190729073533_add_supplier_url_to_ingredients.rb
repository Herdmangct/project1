class AddSupplierUrlToIngredients < ActiveRecord::Migration[5.2]
  def change
    add_column :ingredients, :supplier_url, :string
  end
end
