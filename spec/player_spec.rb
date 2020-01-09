require 'spec_helper'
require 'player'

describe Player do
  subject(:player_1){ described_class.new("Player_1") }
  
  it 'returns the player name' do
    expect(subject.name).to eq "Player_1"
  end
  
end