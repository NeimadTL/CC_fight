class WeaponsController < ApplicationController

  def index
    @weapons = Weapon.order(created_at: :desc)
  end

  def new
    @weapon = Weapon.new
  end

  def create
    @weapon = Weapon.create(weapon_params)

    if @weapon.valid?
      flash[:notice] = 'Weapon created with success'
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def weapon_params
      params.require(:weapon).permit(:name)
    end

end
