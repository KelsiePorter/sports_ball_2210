require 'rspec'
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
end