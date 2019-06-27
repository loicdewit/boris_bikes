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
  describe "initialise with argument for capacity" do
    it "sets docking capacity" do
      dockingstation = DockingStation.new(30)
      dockingstation.capacity.times do
        dockingstation.dock_bike(Bike.new)
      end

      expect(DockingStation).to respond_to(:new).with(1).argument
      expect{dockingstation.dock_bike(Bike.new)}.to raise_error("bike rack full")
    end
  end
  #describe "dock_bike method should  allow reporting broken bike" do
  #  it "reports bike as broken if the bike is broken "
  #  dockingstation
  #end
#  describe "report brocken bike changes the bike status" do
#    it "changes bike status according to bike condition" do
#      station = DockingStation.new
#      bike = Bike.new
#      station.dock_bike(bike, false)
#      bike2 = station.release_bike
#      expect(bike2.working?).to eq false
#    end
#  end

  describe "docking station does not release broken bike" do
    it "returns fail message when bike being released is broken" do
      station = DockingStation.new
      bike = Bike.new
      station.dock_bike(bike, false)
      expect(station.release_bike).to eq "bike is not working"
    end
  end
end
