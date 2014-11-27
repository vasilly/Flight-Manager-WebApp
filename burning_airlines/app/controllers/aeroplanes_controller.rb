class AeroplanesController < ApplicationController

  def new
    @aeroplane = Areoplane.new
  end

  def index
    @aeroplanes = Areoplane.all
  end

  def create
  end

  def destroy
  end

end
