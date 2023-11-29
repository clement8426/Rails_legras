class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @networks = Network.all

    @markers = @networks.geocoded.map do |network|
      {
        lat: network.latitude,
        lng: network.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {network: network}),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  def landing
  end
end
