class AddTwoColumnsToIngredients < ActiveRecord::Migration[5.2]
  def change
    add_column :ingredients, :unit_of_measurement, :string
    add_column :ingredients, :atomic_unit, :float
  end
end
