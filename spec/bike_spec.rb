require 'docking_station'

describe Bike do
    it { is_expected.to respond_to(:working?) }
end

# describe Bike do
#     it 'is working' do
#         bike = Bike.new
#         expect(bike.working?).to be true
#     end
# end