class DockingStation 
    @bike = true
    def self.release_bike
        if @bike == true 
            @bike = false
        end
    end
end
