class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.float :quantity_in_stock
      t.float :quantity_required
      t.string :supplier
      t.float :price

      t.timestamps
    end
  end
end
