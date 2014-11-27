class AeroplanesController < ApplicationController

  def new
    @aeroplanes = Aeroplane.new
  end

  def index
    @aeroplanes = Aeroplane.all
  end

  def create
  end

  def destroy
  end

end
