require_relative './bike.rb'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail "No docked bikes." if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail "No room for bike." if @bikes.count >= 20
    @bikes << bike
  end

end
