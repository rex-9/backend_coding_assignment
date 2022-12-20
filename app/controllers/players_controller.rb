class PlayersController < ApplicationController
  def search
    player = Player.find_by(level: params[:level], gender: params[:gender], age: params[:age])
    render json: player
  end
  # SELECT * FROM players WHERE age = 22 AND gender = 'male' AND level = 9;
end
