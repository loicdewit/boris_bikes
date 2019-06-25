class DockingStation 
    @bike = true
    def self.docked_bike 
        if @bike == true 
            @bike = false
        else
            @bike = @bike
        end
    end
end
