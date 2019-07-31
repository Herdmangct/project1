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
    #params.require(:ingredient).permit(:name, :quantity_in_stock, :quantity_required, :base_price, :sales_price, :user_id)
  end
end
