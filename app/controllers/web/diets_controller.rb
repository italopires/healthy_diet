class Web::DietsController < ApplicationController
  before_action :set_diet, only: [:edit, :update, :destroy]

  def index
    @diets = Diet.all
  end

  def new
    @diet = Diet.new
    @diet.meals.build
    @food_options = FoodOption.all
  end

  def create
    @diet = Diet.new food_option_params

    if @diet.save
      redirect_to diets_path, notice: t('notices.created', model: Diet.model_name.human)
    else
      render :new
    end
  end

  def edit
    @food_options = FoodOption.all
  end

  def update
    if @diet.update(food_option_params)
      redirect_to diets_path, notice: t('notices.updated', model: Diet.model_name.human)
    else
      render :edit
    end
  end

  def destroy
    if @diet.destroy
      redirect_to diets_path, notice: t('notices.destroyed', model: Diet.model_name.human)
    else
      redirect_to diets_path, alert: t('notices.destroy_restricted', model: Diet.model_name.human)
    end
  end

  private

  def set_diet
    @diet = Diet.find(params[:id])
  end

  def food_option_params
    params.require(:diet).permit(:description,
                                 meals_attributes: [:id, :schedule_time, :description, :kind, :diet_id, :_destroy,
                                 food_option_meals_attributes: [:id, :description, :meal_id, :food_option_id, :_destroy]])
  end
end