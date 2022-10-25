require 'rspec'
require 'pry'
require './lib/player'
require './lib/team'

RSpec.describe Team do 
  let!(:team) {Team.new("Dodgers", "Los Angeles")}
  it 'exists' do 

    expect(team).to be_a Team
  end

  it 'has a team name' do 

    expect(team.team_name).to eq("Dodgers")
  end

  it 'has a roster of players' do 

    expect(team.roster).to eq([])
  end

  it 'has can see how many player are on the roster' do 

    expect(team.player_count).to eq(0)
  end

  it 'can add a player to the roster' do 
    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)

    team.add_player(player_1)
    team.add_player(player_2)

    expect(team.roster).to eq([player_1, player_2])
    expect(team.player_count).to eq(2)
  end

  it 'team has long term players' do 
    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    player_3 = Player.new("Alan McClennan", 750000, 48)
    player_4 = Player.new("Hamilton Porter", 100000, 12)

    team.add_player(player_1)
    team.add_player(player_2)
    team.add_player(player_3)
    team.add_player(player_4)

    expect(team.player_count).to eq(4)
    expect(team.long_term_players).to eq([player_1, player_3])
  end

  it 'team has short term players' do 
    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    player_3 = Player.new("Alan McClennan", 750000, 48)
    player_4 = Player.new("Hamilton Porter", 100000, 12)

    team.add_player(player_1)
    team.add_player(player_2)
    team.add_player(player_3)
    team.add_player(player_4)

    expect(team.player_count).to eq(4)
    expect(team.short_term_players).to eq([player_2, player_4])
  end

  it 'team has a total value' do 
    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    player_3 = Player.new("Alan McClennan", 750000, 48)
    player_4 = Player.new("Hamilton Porter", 100000, 12)

    team.add_player(player_1)
    team.add_player(player_2)
    team.add_player(player_3)
    team.add_player(player_4)

    expect(team.total_value).to eq(282000000)
  end

  it 'has team details' do
    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    player_3 = Player.new("Alan McClennan", 750000, 48)
    player_4 = Player.new("Hamilton Porter", 100000, 12)

    team.add_player(player_1)
    team.add_player(player_2)
    team.add_player(player_3)
    team.add_player(player_4)

    expect(team.details).to eq({"total_value" => 282000000, "player_count" => 4})
  end

end