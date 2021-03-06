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

  # DONE
  def new
    @meal = Meal.new
  end

  # DONE
  def create
    @meal = Meal.create meal_params

    @current_user.meals << @meal

    redirect_to meals_path
  end

  # DONE
  def edit
    @meal = Meal.find params[:id]

    check_if_own_meal(@meal)
  end

  # DONE
  def update
    @meal = Meal.find params[:id]

    check_if_own_meal(@meal)

    @meal.update meal_params
    redirect_to meals_path
  end

  def destroy
    meal = Meal.find params[:id]

    check_if_own_meal(meal)

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
