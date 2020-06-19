class Web::WeightMovementsController < ApplicationController
  before_action :set_diet, only: [:index, :new, :create, :edit, :update, :destroy]
  before_action :set_weight_movement, only: [:edit, :update, :destroy]

  def index
    @weight_movements = @diet.weight_movements.order(reference_date: :desc)
  end

  def new
    @weight_movement = @diet.weight_movements.build
  end

  def create
    @weight_movement = @diet.weight_movements.build weight_movement_params

    if @weight_movement.save
      redirect_to diet_weight_movements_path(params[:diet_id]), notice: t('notices.created', model: WeightMovement.model_name.human)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @weight_movement.update(weight_movement_params)
      redirect_to diet_weight_movements_path(params[:diet_id]), notice: t('notices.updated', model: WeightMovement.model_name.human)
    else
      render :edit
    end
  end

  def destroy
    if @weight_movement.destroy
      redirect_to diet_weight_movements_path(params[:diet_id]), notice: t('notices.destroyed', model: WeightMovement.model_name.human)
    else
      redirect_to diet_weight_movements_path(params[:diet_id]), alert: t('notices.destroy_restricted', model: WeightMovement.model_name.human)
    end
  end

  private

  def set_diet
    @diet = current_user.diets.find(params[:diet_id])
  end

  def set_weight_movement
    @weight_movement = @diet.weight_movements.find(params[:id])
  end

  def weight_movement_params
    params.require(:weight_movement).permit(:weight, :reference_date)
  end
end