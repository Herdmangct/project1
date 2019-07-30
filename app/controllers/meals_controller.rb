class MealsController < ApplicationController
  before_action :check_for_login

  # DONE
  def index
  end

  # DONE
  def show
    @meal = Meal.find params[:id]

  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def meals_params
  end
end
