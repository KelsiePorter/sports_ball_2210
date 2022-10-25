require 'pry'

class Team 
  attr_reader :team_name,
              :city,
              :roster,
              :details

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

  def long_term_players 
    @roster.select do |player|
      player.contract_length > 24
    end
  end

  def short_term_players 
    @roster.select do |player|
      player.contract_length <= 24
    end
  end

  def total_value 
    contract_lengths = 0
    monthly_costs = 0
    @roster.map do |player|
      contract_lengths += player.contract_length
    end
    @roster.map do |player|
      monthly_costs += player.monthly_cost
    end
    contract_lengths * monthly_costs
  end

  def details
    team_details = {
      "total_value" => total_value,
      "player_count" => player_count
    }
  end

end
