class Web::Settings::FoodOptionsController < ApplicationController
  before_action :set_food_option, only: [:edit, :update, :destroy]

  def index
    @food_options = FoodOption.all
  end

  def new
    @food_option = FoodOption.new
  end

  def create
    @food_option = FoodOption.new food_option_params

    if @food_option.save
      redirect_to settings_food_options_path, notice: t('notices.created', model: FoodOption.model_name.human)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @food_option.update(food_option_params)
      redirect_to settings_food_options_path, notice: t('notices.updated', model: FoodOption.model_name.human)
    else
      render :edit
    end
  end

  def destroy
    if @food_option.destroy
      redirect_to settings_food_options_path, notice: t('notices.destroyed', model: FoodOption.model_name.human)
    else
      redirect_to settings_indicator_profiles_path, alert: t('notices.destroy_restricted', model: FoodOption.model_name.human)
    end
  end

  private

  def set_food_option
    @food_option = FoodOption.find(params[:id])
  end

  def food_option_params
    params.require(:food_option).permit(:description)
  end
end