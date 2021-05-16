require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
    let(:player_1) { double :player }
    let(:player_2) { double :player }
  describe '#attack' do
    it "attacks a player" do
      expect(player_1).to receive(:damage)
      subject.attack(player_1)
    end
  end

  describe "#player_1 and #player_2" do
    it "accepts two player instances" do
      expect(game.player_1).to eq player_1
      expect(game.player_2).to eq player_2
    end
  end

  describe "#current_turn" do
    it "starts game with player_1" do
      expect(game.current_turn).to eq player_1
    end
  end

end