class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @trip = Trip.find(10)
    @markers = [
      {
        lat: @trip.latitude,
        lng: @trip.longitude,
        info_window: render_to_string(partial: "info_window", locals: { trip: @trip.name }),
        image_url: helpers.asset_url('background.jpg')
      },
      {
        lat: @trip.stop_1_lat,
        lng: @trip.stop_1_long,
        info_window: render_to_string(partial: "info_window2", locals: { trip: @trip.name }),
        image_url: helpers.asset_url('background.jpg')
      }
    ]
  end
end
