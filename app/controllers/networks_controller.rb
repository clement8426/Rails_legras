class NetworksController < ApplicationController

  def index
    @networks = Network.all
    @network_farmers = {}

    if params[:query].present?
      @networks = Network.search_by_location_and_description(params[:query])
    else
      @networks = Network.all
    end

    @networks.each do |network|
      @network_farmers[network.id] = User.where(type: 'farmer', network_id: network.id)
    end
  end

  def show
    @network = Network.find(params[:id])
    @farmers = User.where(type: 'farmer')
  end
end
