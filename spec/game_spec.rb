require 'game'


describe Game do
    describe '#attack' do
    let(:player_1) { double :name, hp: 100 }
    let(:player_2) { double :name, hp: 100 }
    it 'damages player' do
      expect(player_2).to receive(:damage)
      subject.attack(player_2)
    end
  end
end