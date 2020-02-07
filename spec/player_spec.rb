require './lib/player'
describe Player do
    subject(:capybob) { Player.new('CapyBob') }
    subject(:capybary) { Player.new('CapyBary') }
    describe "#name" do
        it 'returns the players name' do
            expect(capybob.name).to eq("CapyBob")
            expect(capybary.name).to eq("CapyBary")
        end
    end

    describe "#hit_points" do
        it 'shows player hit points' do
            expect(capybob.hit_points).to eq(200)
        end
    end

    describe "#attack" do
        it 'reduces hit points on attack' do
            expect { capybob.receive_damage }.to change{ capybob.hit_points }.by(-10)
        end
    end
end