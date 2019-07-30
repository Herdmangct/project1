class AddDefaultsToIngredients < ActiveRecord::Migration[5.2]
  def change
    change_column_default :ingredients, :name, ""
    change_column_default :ingredients, :quantity_in_stock, 0.0
    change_column_default :ingredients, :quantity_required, 0.0
    change_column_default :ingredients, :supplier, ""
    change_column_default :ingredients, :price, 0.0
    change_column_default :ingredients, :unit_of_measurement, "unit"
    change_column_default :ingredients, :atomic_unit, 0.0
    change_column_default :ingredients, :supplier_url, ""
    change_column_default :ingredients, :product_name, ""
    change_column_default :ingredients, :supplier_email, ""
  end
end
