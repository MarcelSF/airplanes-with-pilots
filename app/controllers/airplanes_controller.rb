class AirplanesController < ApplicationController
  before_action :set_airplane, only: [:show, :edit, :update, :destroy]
  def index
    @airplanes = Airplane.all
  end

  def show
  end

  def new
    @airplane = Airplane.new
  end

  def create
    @airplane = Airplane.new(airplane_params)
    @airplane.save
    redirect_to airplanes_path
  end

  def edit
  end

  def update
    @airplane.update(airplane_params)
    redirect_to @airplane
  end

  def destroy
    @airplane.delete
    redirect_to airplanes_path
  end

  private

  def set_airplane
    @airplane = Airplane.find(params[:id])
  end

  def airplane_params
    params.require(:airplane).permit(:model, :crew, :image_url)
  end
end
