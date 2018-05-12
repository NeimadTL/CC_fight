class ShieldsController < ApplicationController

  def index
    @shields = Shield.order(created_at: :desc)
  end

  def new
    @shield = Shield.new
  end

end
