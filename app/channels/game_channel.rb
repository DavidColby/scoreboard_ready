class GameChannel < ApplicationCable::Channel
  def subscribed
    stream_or_reject_for Game.find_by(id: params[:id])
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
