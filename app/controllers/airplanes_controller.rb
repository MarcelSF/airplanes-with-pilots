class AirplanesController < ApplicationController
  before_action :set_airplane, only: [:show, :edit, :update, :destroy]
  def index
    @airplanes = Airplane.all
    filtering_params(params).each do |key, value|
      @airplanes = @airplanes.send("filter_by_#{key}", value) if value.present?
    end
  end

  def show
  end

  def new
    @airplane = Airplane.new
  end

  def create
    @airplane = Airplane.new(airplane_params)
    if @airplane.save
      redirect_to airplanes_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @airplane.update(airplane_params)
      redirect_to @airplane
    else
      render :edit
    end
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
    params.require(:airplane).permit(:model, :image_url, :category, :engines)
  end

  def filtering_params(params)
    params.slice(:category, :engines, :speed)
  end
end
