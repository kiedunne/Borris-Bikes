require_relative './bike.rb'

class DockingStation
  attr_reader :bikes
  attr_reader :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail "No docked bikes." if empty?
    @bikes.pop
  end

  def dock(bike)
    fail "No room for bike." if full?
    @bikes << bike
  end

  private
  def full?
    @bikes.count >= capacity 
  end

  def empty?
    @bikes.empty?
  end
end
