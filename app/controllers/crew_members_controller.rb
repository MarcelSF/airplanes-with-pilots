class CrewMembersController < ApplicationController
  def new
    @crew_member = CrewMember.new
    @airplane = Airplane.find(params[:airplane_id])
  end

  def create
    @crew_member = CrewMember.new(crew_member_params)
    @airplane = Airplane.find(params[:airplane_id])
    @crew_member.airplane = @airplane
    if @crew_member.save
      redirect_to airplane_path(@airplane)
    else
      render 'new'
    end
  end

  private

  def crew_member_params
    params.require(:crew_member).permit(:name, :position)
  end
end
