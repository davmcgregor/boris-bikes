require 'docking_station'

describe DockingStation do
  let(:bike) {Bike.new}

  it { is_expected.to respond_to(:release_bike) }

  it { is_expected.to respond_to(:dock).with(1).argument }

  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  describe 'initialization' do
    it 'has a variable capacity' do
      docking_station = DockingStation.new(50)
      50.times { docking_station.dock Bike.new}
      expect { docking_station.dock Bike.new }.to raise_error 'Docking station full'
    end
  end

  describe 'initialization' do
    subject { DockingStation.new}
      it 'default capacity' do
        described_class::DEFAULT_CAPACITY.times do
        subject.dock(bike)
      end
        expect { subject.dock(bike) }.to raise_error 'Docking station full'
      end
  end

  describe '#dock' do
    it 'docks something' do
      expect(subject.dock(bike)).to eq [bike]
    end  
  
    it 'raises an error when full' do
      subject.capacity.times { subject.dock double :bike }
      expect { subject.dock double(:bike) }.to raise_error('Docking station full')
    end
  end

  describe '#release_bike' do
    it 'releases a bike' do
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
            
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error('No bikes available')
      end
    end

    it "releases working bikes" do     
      subject.dock(bike)
      subject.release_bike
      expect(bike.broken?).to eq false
    end

    it 'only bikes that are working' do
        allow(bike).to receive(:broken?) { true }
        subject.dock(bike)
        expect { subject.release_bike }.to raise_error('Cannot release broken bike')
    end
end

