require 'pry'

class Team 
  attr_reader :team_name,
              :city,
              :roster

  def initialize(team_name, city)
    @team_name = team_name
    @city = city
    @roster = []
  end

  def player_count 
    @roster.size
  end

  def add_player(player)
    @roster << player 
  end

end
