class AddSupplierEmailToIngredients < ActiveRecord::Migration[5.2]
  def change
    add_column :ingredients, :supplier_email, :string
  end
end
