class TripsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @trips = policy_scope(Trip)
    @trips = Trip.all
  end

  def new
    @trip = Trip.new
  end

  def show
    @trip = Trip.find(params[:id])
    @booking = Booking.new
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.save
    redirect_to trip_path(@trip)
  end

  def update
    @trip = Trip.find(params[:id])
    @trip.update(trip_params)
    flash[:notice] = 'Trip information has been updated'
    redirect_to trip_path
  end

  def destroy
    @trip.destroy
    redirect_to trips_path
  end

  private

  def trip_params
    params.require(:trip).permit(:name, :description, :duration, :location, :price, :stop_1, :stop_2, :choice, :category)
  end
end
