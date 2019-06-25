require 'docking_station'

describe DockingStation do 
    it 'releases the bike' do
        expect(DockingStation.release_bike).to eq false
    end

end
