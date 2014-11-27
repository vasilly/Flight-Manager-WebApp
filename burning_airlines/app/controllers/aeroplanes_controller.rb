class AeroplanesController < ApplicationController

  def new
    @aeroplanes = Aeroplane.new
  end

  def index
    @aeroplanes = Aeroplane.all
  end

  def create
    @aeroplanes = Aeroplane.new(aeroplane_params)
  end 

  def destroy
  end

  private
  def aeroplane_params
    params.require(:aeroplane).permit(:cols, :rows, :name)
  end

end
