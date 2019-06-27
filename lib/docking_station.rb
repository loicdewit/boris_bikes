class DockingStation

    attr_reader :bike

    def release_bike
        fail 'No bikes available' unless @bike
        @bike
    end

    def dock_bike(bike)
        fail 'bike rack full' if @bike != nil
        @bike = bike
    end

    def bike
        @bike
    end
end
