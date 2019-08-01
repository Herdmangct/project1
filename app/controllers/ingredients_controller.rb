class IngredientsController < ApplicationController
  before_action :check_for_login
  # Make sure once logged in other users can't get other users ingredients

  # DONE
  def index
  end

  def show
    @ingredient = Ingredient.find params[:id]
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new ingredient_params

    # raise "hell"
    #
    # # attach ingredient to quantities by trying to get contents of every hash
    # @current_user.meals.each do |meal|
    #   quantity_attributes = params.fetch(meal.parameterize.underscore.to_sym, false)
    #   quantity_attributes = quantity_attributes.split("_") unless quantity_attributes == false
    #   @quantity = Quantity.new :measurement => quantity_attributes[1].to_f
    #   @ingredient.quantities <<
    # end
    # @ingredient.quantities << @
    #
    # @meal.save
    # redirect_to meals_path

    # need to catch the quantities information and create a quantity and attach it to both meal and ingredient

  end

  def edit
  end

  def update

  end

  def destroy
  end

  private
  def ingredient_params
    params.require(:ingredient).permit(:name, :quantity_in_stock, :quantity_required, :supplier, :price, :unit_of_measurement, :atomic_unit, :supplier_url, :product_name, :supplier_email)
  end

end
