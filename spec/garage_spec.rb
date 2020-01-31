describe Garage do
  it {is_expected.to respond_to(:deliver_bikes).with(1).argument}

  it 'receives broken bikes from the van' do
    van = Van.new
    bike = Bike.new
    bike.report_broken
    van.van_bikes.push(bike)
    subject.deliver_bikes(van)
    expect(subject.garage_bikes).to eq [bike]
  end

  it 'delivers fixed bikes to the van' do
    van = Van.new
    bike = Bike.new
    bike = bike.report_broken
    subject.garage_bikes.push(bike)
    subject.return_fixed_bikes(van)
    expect(van.van_bikes).to eq [bike]
  end

end