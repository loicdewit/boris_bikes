require 'docking_station'
require 'bike'

describe DockingStation do
  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end

  describe '#release_bike' do
    it 'releases bike' do
      expect { subject.release_bike }.to raise_error("No bikes available")
    end
  end
  describe "#dock_bike" do
    it "docks bike if not full" do
      dockingstation = DockingStation.new
      dockingstation.capacity.times do
        dockingstation.dock_bike(Bike.new)
      end
      expect { dockingstation.dock_bike(Bike.new)}.to raise_error("bike rack full")
    end
  end
end
