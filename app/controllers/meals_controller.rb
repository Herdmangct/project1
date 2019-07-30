class MealsController < ApplicationController
  before_action :check_for_login

  # DONE
  def index
  end

  # DONE
  def show
    @meal = Meal.find params[:id]
    check_if_own_meal(@meal)
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new meal_params
    @meal.save 
  end

  def edit
    @meal = Meal.find params[:id]
  end

  def update
    @meal = Meal.find params[:id]
    @meal.update meal_params
    redirect_to meals_path
  end

  def destroy
    meal = Meal.find params[:id]
    meal.destroy
    redirect_to meals_path
  end

  private
  def meal_params
    params.require(:meal).permit(:name, :quantity_in_stock, :quantity_required, :base_price, :sales_price, :user_id)
  end

  private
  def check_if_own_meal(meal)
    redirect_to meals_path unless meal.user_id == @current_user.id
  end
end
