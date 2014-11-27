class AeroplanesController < ApplicationController

  def index
    @aeroplanes = Aeroplane.all
  end

  def new
    @aeroplanes = Aeroplane.new
  end

  def create
    @aeroplanes = Aeroplane.new(aeroplane_params)

    if @aeroplanes.save
      redirect_to root_path, :notice => 'new aeroplane has been successfully created'
    else
      render :new
    end
  end

  def update
    @aeroplane = Aeroplanes.find(params[:id])
    @aeroplane.update(book_params)
    redirect_to aeroplane_path(@aeroplane.id)
  end

  def destroy
    @aeroplane = Aeroplane.find(params[:id])
    @aeroplane.destroy
    redirect_to root_path
  end

  private
  def aeroplane_params
    params.require(:aeroplane).permit(:cols, :rows, :name)
  end

end
