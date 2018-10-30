require 'docking_station'

# describe DockingStation do
#   it "Docking Station release bike" do
#     expect(DockingStation).to respond_to :release_bike
#   end
# end

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it "Releases bike" do
    bike = subject.release_bike
    expect(bike).to be_working
  end
end

#   it "Docking Station return a Bike instance" do
#     expect(subject).to release_bike.should eq(Bike.new)
#   end
# end
