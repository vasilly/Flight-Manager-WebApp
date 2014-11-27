class FlightsController < ApplicationController

  def index
    @flights = Flight.all
  end

  def new
    @flights = Flight.new
  end

  def create
    @flights = Flight.new(flight_params)

    if @flights.save
      redirect_to root_path, :notice => 'new aeroplane has been successfully created'
    else
      render :new
    end

  end

  def update
    @flight = Flight.find(params[:id])
    @flight.update(book_params)
    redirect_to flight_path(@flight.id)
  end

  def destroy
    @flight = Flight.find(params[:id])
    @flight.destroy
    redirect_to root_path
  end

  private
  def flight_params
    params.require(:flight).permit(:plane_id, :origin, :destination, :dep_date, :arr_date)
  end

end