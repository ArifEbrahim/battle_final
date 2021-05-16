require 'player'

describe Player do
  subject(:player_1) {Player.new("John")}
  subject(:player_2) {Player.new("James")}
  describe "#name" do
    it "returns a name" do
      expect(player_1.name).to eq "John"
    end
  end
  describe "#hit_points" do
    it "returns the hit points" do
      expect(player_1.hit_points).to eq Player::DEFAULT_HIT_POINTS
    end
  end
  describe "#damage" do
    it "reduces hit points by 10" do
      expect{ player_1.damage }.to change {player_1.hit_points}.by(-10)
    end
  end
end