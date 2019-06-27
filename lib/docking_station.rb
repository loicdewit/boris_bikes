class DockingStation

  DEFAULT_CAPACITY = 20
  attr_reader :bike

  def initialize
    @bike_array = []
  end

  def capacity
    return DEFAULT_CAPACITY
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bike_array.pop
  end

  def dock_bike(bike)
    fail 'bike rack full' if full?
    @bike_array.push(bike)
  end

  private

  def full?
    return @bike_array.length == DEFAULT_CAPACITY
  end

  def empty?
    return @bike_array == []
  end
end
