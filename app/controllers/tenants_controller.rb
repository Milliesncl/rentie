class TenantsController < ApplicationController
  def new
    @user = User.new
    @units = Unit.joins(:building).where(buildings: { user: current_user })
  end

  def create
    @units = Unit.joins(:building).where(buildings: { user: current_user })
    @user = User.new(params_user)
    @user.renter = true
    if @user.save
      @unit = Unit.find(params[:units])
      @unit.user_id = @user.id
      if @unit.save
        redirect_to building_unit_path(@unit.building.id, @unit.id)
      else
        render :new
      end
    else
      render :new
    end

  end

  private

  def params_user
    params.require(:user).permit(:email, :password, :first_name, :last_name, :renter, :units)
  end
end
