class NetworksController < ApplicationController

  def index
    @networks = Network.all
  end

  def show
    @network = Network.find(params[:id])
    @farmers = User.where(type: 'farmer')
  end

end
