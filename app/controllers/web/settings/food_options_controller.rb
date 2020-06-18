class Web::Settings::FoodOptionsController < ApplicationController
  before_action :set_food_option, only: [:edit, :update, :destroy]

  def index
    @food_options = current_user.food_options
  end

  def new
    @food_option = current_user.food_options.build
  end

  def create
    @food_option = current_user.food_options.build food_option_params

    if @food_option.save!
      redirect_to settings_food_options_path, notice: t('notices.created', model: FoodOption.model_name.human)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @food_option.update!(food_option_params)
      redirect_to settings_food_options_path, notice: t('notices.updated', model: FoodOption.model_name.human)
    else
      render :edit
    end
  end

  def destroy
    if @food_option.destroy
      redirect_to settings_food_options_path, notice: t('notices.destroyed', model: FoodOption.model_name.human)
    else
      redirect_to settings_food_options_path, alert: t('notices.destroy_restricted', model: FoodOption.model_name.human)
    end
  end

  private

  def set_food_option
    @food_option = current_user.food_options.find(params[:id])
  end

  def food_option_params
    params.require(:food_option).permit(:description)
  end
end