require 'bike'

describe Bike do
  subject(:bike) { described_class.new }

  it { is_expected.to respond_to(:working?) }

  it 'allows the user to report broken bikes' do 
    bike.report_broken
    expect(bike.status).to eq :broken
  end

  it 'says that the bike is not working when broken' do
    bike.report_broken
    expect(bike.working?).to eq false
  end
end


