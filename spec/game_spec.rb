require 'game'


describe Game do
    describe '#attack' do
    let(:player_1) { double "Asia" , hp: 100 }
    let(:player_2) { double name: "Lucian", hp: 100 }
    let(:game) {described_class.new(player_1,player_2)}
    it 'damages player' do
      expect(player_2).to receive(:damage)
      game.attack(player_2)
    end

    it 'test that two players are added to instance of game' do
      expect(game.player_1).to eq player_1
    end

    it 'test name method returns player attribute name' do
      expect(game.player_name(player_1)).to eq "Asia"
    end

     it 'test name method returns player attribute name' do
      expect(game.player_name(player_2)).to eq "Lucian"
    end
  end
end