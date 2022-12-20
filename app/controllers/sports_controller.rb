class SportsController < ApplicationController
  def show
    sport = Sport.find_by(name: params[:name])
    render json: sport
  end

  def multiple
    multiple_players = []
    all_sports = Sport.all
    all_sports.each do |sport|
      multiple_players << sport if sport.players.length > 1
    end
    render json: multiple_players
  end

  def no
    no_player = []
    all_sports = Sport.all
    all_sports.each do |sport|
      no_player << sport if sport.players.length.zero?
    end
    render json: no_player
  end
end
