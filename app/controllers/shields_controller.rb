class ShieldsController < ApplicationController

  def index
    @shields = Shield.order(created_at: :desc)
  end

  def new
    @shield = Shield.new
  end

  def create
    @shield = Shield.create(shield_params)

    if @shield.valid?
      flash[:notice] = 'Shield created with success'
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def shield_params
      params.require(:shield).permit(:name)
    end

end
