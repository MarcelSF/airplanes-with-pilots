class AirplanesController < ApplicationController
  def index
    @airplanes = Airplane.all
  end

  def show
    @airplane = Airplane.find(params[:id])
  end

  def new
    @airplane = Airplane.new
  end

  def create
    @airplane = Airplane.new(airplane_params)
    @airplane.save
    redirect_to airplanes_path
  end

  private

  def airplane_params
    params.require(:airplane).permit(:model, :crew, :image_url)
  end
end
