class TripsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show trip_choice trip_category]
  before_action :skip_authorization, only: %i[index show trip_choice trip_category]

  def index
    @trips = policy_scope(Trip)
    @trips = Trip.all

    @markers = @trips.geocoded.map do |trip|
      {
        lat: trip.latitude,
        lng: trip.longitude,
        info_window: render_to_string(partial: "info_window_index", locals: { trip: trip }),
        image_url: helpers.asset_url('background.jpg')
      }
    end
  end

  def new
    @trip = Trip.new
  end

  def show
    @trip = Trip.find(params[:id])
    @booking = Booking.new
    @markers = [{
      lat: @trip.latitude,
      lng: @trip.longitude,
      info_window: render_to_string(partial: "info_window_show", locals: { trip: @trip }),
      image_url: helpers.asset_url('background.jpg')
    },
                {
                  lat: @trip.stop_1_lat,
                  lng: @trip.stop_1_long,
                  info_window: render_to_string(partial: "info_window2", locals: { trip: @trip }),
                  image_url: helpers.asset_url('background.jpg')
                }]
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

  def trip_choice
    @choice = params[:choice]
    @trips = Trip.select { |trip| trip.choice == @choice }
    render '_trip_choice'
  end

  def trip_category
    @category = params[:category]
    @trips = Trip.select { |trip| trip.category == @category }
    render '_trip_destination'
  end

  private

  def trip_params
    params.require(:trip).permit(:name, :description, :duration, :location, :price, :stop_1, :stop_2, :choice,
                                 :category)
  end
end
