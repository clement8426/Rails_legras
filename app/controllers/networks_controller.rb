class NetworksController < ApplicationController

  def index
    @networks = Network.all
    @network_farmers = {}
    @networks = Network.near(current_user.location, 100)

    if params[:query].present?
      @networks = Network.near(params[:query], 100)
    else
      @networks = Network.all
    end

    @networks.each do |network|
      @network_farmers[network.id] = User.where(type: 'farmer', network_id: network.id)
    end
  end

  def show
    @cart_item = CartItem.new
    @network = Network.find(params[:id])
    @network_farmers = User.where(type: 'farmer', network_id: @network.id)
  end
end
