describe Van do
  it 'removes broken bikes from a docking station' do
    bike = Bike.new
    station = DockingStation.new
    bike.report_broken
    station.dock(bike)
    subject.get_bikes(station)
    expect(subject.van_bikes).to eq [bike]
  end
end
