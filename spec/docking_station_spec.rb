require 'docking_station.rb'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }

  it 'bike method returns a bike object' do
    expect(subject.release_bike).to be_a(Bike)
  end

  it 'bike is working' do
    expect(subject.release_bike.working?).to be true
  end
end
