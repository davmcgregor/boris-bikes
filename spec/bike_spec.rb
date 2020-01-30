require 'bike'

describe Bike do
  subject(:bike) { described_class.new }

  it { is_expected.to respond_to(:broken?) }

  it 'allows the user to report broken bikes' do 
    bike.report_broken
    expect(bike.broken?).to eq true
  end

  it 'fixes a broken bike' do
    bike = Bike.new
    bike.report_broken
    bike.fix
    expect(bike.broken?).to eq false
  end
end


