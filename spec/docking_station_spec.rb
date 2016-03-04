require 'docking_station'

describe DockingStation do

  it_behaves_like 'a bike_container'

  it 'does not release a bike when it is broken' do
    bike = double(:bike, broken: true)
    subject.load_bike(bike)
    expect{subject.release_bike_to_user}.to raise_error('EMPTY!')
  end

end
