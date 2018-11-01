require 'docking_station'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

   it "Releases a working bike" do
     expect(Bike.new).to respond_to :working?
   end

   # it "Releases the docked bike" do
   #   bike = Bike.new
   #   subject.dock(bike)
   #   expect(subject.release_bike).to eq bike
   # end

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
     subject.capacity.times {subject.dock(Bike.new)}
     expect {subject.dock(Bike.new)}.to raise_error "No room for bike."
   end

   it "Can set number of docks in station" do
     subject = DockingStation.new(30)
     expect(subject.capacity).to eq(30)
   end

   it "Won't release a broken bike" do
     bike = Bike.new
     subject.dock(bike)
     bike.report_broken
     expect { subject.release_bike }.to raise_error 'Bike broken'
   end

 it "Accepts broken and working bikes" do
   bike = Bike.new
   subject.dock(bike)
   bike.report_broken
   expect(subject.bikes).to eq [bike]
 end
end
