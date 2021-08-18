class BookingsController < ApplicationController
  before_action :skip_authorization, only: %i[index show]
  def index
    @bookings = Booking.all
    @bookings = policy_scope(Booking).order(created_at: :desc)
  end

  def show
    @booking = Booking.find(params[:id])
    @markers = [{
      lat: @booking.trip.latitude,
      lng: @booking.trip.longitude,
      info_window: render_to_string(partial: "info_window_show", locals: { trip: @booking }),
    },
                {
                  lat: @booking.trip.stop_1_lat,
                  lng: @booking.trip.stop_1_long,
                  info_window: render_to_string(partial: "info_window2", locals: { trip: @booking }),
                },
                {
                  lat: @booking.trip.stop_2_lat,
                  lng: @booking.trip.stop_2_long,
                  info_window: render_to_string(partial: "info_window3", locals: { trip: @booking }),
                }]
  end

  def new
    @booking = Booking.new
  end

  def create
    @trip = Trip.find(params[:booking][:trip_id])
    @booking = Booking.new(booking_params)
    @booking.schedule_date = get_booking_date(booking_params)
    authorize @booking
    @booking.user = current_user
    if @booking.save
      flash[:notice] = 'Booking has been successfully recorded'
      redirect_to bookings_path
    else
      render 'trips/show'
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @trip = Trip.find(@booking.trip_id)
    authorize @booking
    if Booking.delete(params[:id]).positive?
      flash[:success] = 'Booking has been cancelled'
    else
      flash[:error] = 'Sorry something went wrong, please try again'
    end
    redirect_to bookings_path
  end

  private

  def get_booking_date(params)
    "#{params["schedule_date(3i)"]}/#{params["schedule_date(2i)"]}/#{params["schedule_date(1i)"]}"
  end

  def booking_params
    params.require(:booking).permit(:total_price, :schedule_date, :trip_id)
  end
end
