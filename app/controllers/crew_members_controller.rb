class CrewMembersController < ApplicationController
  before_action :set_airplane, only: [:new, :create]

  def new
    @crew_member = CrewMember.new
  end

  def create
    @crew_member = CrewMember.new(crew_member_params)
    @crew_member.airplane = @airplane
    if @crew_member.save
      redirect_to airplane_path(@airplane)
    else
      render 'new'
    end
  end

  def destroy
    @crew_member = CrewMember.find(params[:id])
    @crew_member.delete
    redirect_to airplane_path(@crew_member.airplane)
  end

  private

  def set_airplane
    @airplane = Airplane.find(params[:airplane_id])
  end

  def crew_member_params
    params.require(:crew_member).permit(:name, :position)
  end
end
