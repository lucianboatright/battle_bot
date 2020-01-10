require 'spec_helper'
require 'player'

describe Player do
  subject(:player_1){ described_class.new("Player_1") }
  subject(:player_2){ described_class.new("Player_2")}
  
  it 'returns the player name' do
    expect(player_1.name).to eq "Player_1"
  end


  describe '#attack' do
    it 'damages player' do
      expect(player_2).to receive(:damage)
      player_2.damage
    end
  end

  it 'test hp is reduced by 10 hp' do
    expect{player_2.damage}.to change{player_2.hp}.by -10
  end

  
end