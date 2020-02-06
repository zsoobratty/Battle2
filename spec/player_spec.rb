require './lib/player'
describe Player do
    subject(:capybob) { Player.new('CapyBob') }
    describe "#name" do
        it 'returns the players name' do
            expect(capybob.name).to eq("CapyBob")
        end
    end

    describe "#hit_points" do
        it 'shows player hit points' do
            expect(capybob.hit_points).to eq 200
        end
    end

    describe "#attack" do
        it 'reduces hit points on attack' do
            expect { capybob.attack }.to change{ capybob.hit_points }.by(-20)
        end
    end
end