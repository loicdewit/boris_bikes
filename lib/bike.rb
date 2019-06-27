class Bike
    def initialize
      @working = true
    end
    def working?
      @working
    end
    def change_status
      @working = !@working
    end
    def report_broken
      true
    end

end
