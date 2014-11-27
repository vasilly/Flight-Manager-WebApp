class ReservationsController < ApplicationController

def show
  @reservation = Reservation.find(params[:id])
  @flights = Flight.all
  @users = User.all
end

def edit
  @reservation = Reservation.find(params[:id])

end

def destroy
  @reservation = Reservation.find(params[:id])

end

def create



private
  def res_params
    params.require(:reservation).permit(:name, :flight_no, :user_id, :reservation_id, :flight_id, :pos_x, :pos_y, :availability)


end