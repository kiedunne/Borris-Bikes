require 'docking_station'

# describe DockingStation do
#   it "Docking Station release bike" do
#     expect(DockingStation).to respond_to :release_bike
#   end
# end

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  # it "Releases bike" do
  #   bike = subject.release_bike
  #   expect(bike).to be_working
  # end

   it "Releases a working bike" do
     expect(Bike.new).to respond_to :working?
   end

   it "Releases the docked bike" do
     bike = Bike.new
     subject.dock(bike)
     expect(subject.release_bike).to eq bike
   end

   it { is_expected.to respond_to(:dock).with(1).argument }

   it "Seeing docked bike" do
     bike = Bike.new
     subject.dock(bike)
     expect(subject.bikes).to eq [bike] 
   end

   it "No bikes released if empty" do
     expect {subject.release_bike}.to raise_error "No docked bikes."
   end

   it "Cannot dock bike if station full" do
     20.times {subject.dock(Bike.new)}
     expect {subject.dock(Bike.new)}.to raise_error "No room for bike."
   end

end
