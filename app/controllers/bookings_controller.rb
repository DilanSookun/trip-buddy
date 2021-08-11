class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @trip = Trip.find(params[:booking][:trip_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    if @booking.save
      flash[:notice] = 'Booking has been successfully recorded'
      redirect_to trips_path
    else
      render 'trips/show'
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @trip = Trip.find(@booking.trip_id)
    if Booking.delete(params[:id]).positive?
      flash[:success] = 'Booking has been cancelled'
    else
      flash[:error] = 'Sorry something went wrong, please try again'
    end
    redirect_to booking_path(@booking)
  end

  def booking_params
    params.require(:booking).permit(:review, :total_price)
  end
end
