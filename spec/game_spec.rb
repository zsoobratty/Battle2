require 'game'
require 'player'
describe Game do
  subject(:game) { Game.new(capybob, capybary) }
  subject(:capybob) { Player.new('CapyBob') }
  subject(:capybary) { Player.new('CapyBary') }

  describe "#initialize" do
    it 'accepts two arguments' do
      expect(game.player_1).to eq(capybob)
      expect(game.player_2).to eq(capybary)
    end
  end

  describe "#attack" do
    it 'reduces hit points on attack' do
        expect { game.attack(capybob) }.to change{ capybob.hit_points }.by(-10)
    end
end
end