class IngredientsController < ApplicationController
  before_action :check_for_login
  # Make sure once logged in other users can't get other users ingredients

  # DONE
  def index
  end

  # DONE
  def show
    @ingredient = Ingredient.find params[:id]
  end

  # DONE
  def new
    @ingredient = Ingredient.new
  end

  # DONE
  def create
    ingredient = Ingredient.create ingredient_params

    quantity_attributes = params[:meals]

    # Loop over the quantities
    quantity_attributes.each do |q|
      q = q.split("_")

      # create quantity
      meal_name = q[0]
      quantity_measurement = q[1]
      quantity_unit_of_measurement = q[2]

      quantity = Quantity.create :measurement => quantity_measurement, :unit_of_measurement => quantity_unit_of_measurement

      # Meal (one to many) Quantity
      meal = Meal.find_by( :name => meal_name)
      meal.quantities << quantity

      # Ingredient (one to many) Quantity
      ingredient.quantities << quantity

    end

    redirect_to ingredients_path
  end

  def edit
  end

  def update
  end

  # DONE
  def destroy
    ingredient = Ingredient.find params[:id]

    check_if_own_ingredient(ingredient)

    ingredient.destroy
    redirect_to ingredients_path
  end

  private
  def ingredient_params
    params.require(:ingredient).permit(:name, :quantity_in_stock, :quantity_required, :supplier, :price, :unit_of_measurement, :atomic_unit, :supplier_url, :product_name, :supplier_email)
  end

  private
  def check_if_own_ingredient(ingredient)
    redirect_to ingredients_path unless @current_user.ingredients.include? ingredient
  end
end
