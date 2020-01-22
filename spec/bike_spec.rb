require 'docking_station'

describe DockingStation do
    it { is_expected.to respond_to(:release_bike) }

    it 'releases working bikes' do
        bike = subject.release_bike
        expect(bike).to be_working
    end
end


# Add a test to your DockingStation specification 
# that a) gets a bike, and then b) expects the bike to be working


describe Bike do
    it { is_expected.to respond_to(:working?) }
end




# describe Bike do
#     it 'is working' do
#         bike = Bike.new
#         expect(bike.working?).to be true
#     end
# end