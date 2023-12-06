class CartChannel < ApplicationCable::Channel
  def subscribed
    stream_for "cart"
  end
end
