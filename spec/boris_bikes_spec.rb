require 'boris_bikes'

describe 'DockingStation' do
    it 'checks if the bike is docked' do
        expect(DockingStation.docked_bike).to eq false
    end
end