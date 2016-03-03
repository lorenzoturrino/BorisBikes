require 'docking_station'


describe DockingStation do
  it {is_expected.to respond_to(:dock).with(1).argument}
  it {is_expected.to respond_to :dock}
  it {is_expected.to respond_to :bike}

  it 'expects capacity to be modifiable by the user' do
    station = DockingStation.new(5)
    expect(station.capacity).to eq 5
  end


  it 'expects instance of bike class' do
    bike1 = Bike.new
    subject.dock(bike1)
    expect(subject.release_bike).to be_a Bike
  end
  it 'returns a true if the bike is working' do
    bike = Bike.new
  expect(bike.working?).to be true
  end

  it 'dock the bike' do
  bike1 = Bike.new
  expect(subject.dock(bike1)).to be  bike1
  end

  it 'should return a bike if one is docked' do
    bike1 = Bike.new
    subject.dock(bike1)
    expect(subject.bike).to be bike1
  end

  it 'should raise an error if there are no bikes' do
    expect{subject.release_bike while true}.to raise_error(RuntimeError)
  end

  it 'should raise an error if station is full' do
    bike1 = Bike.new
    expect{
      while true
        subject.dock(bike1)
      end
      }.to raise_error(RuntimeError)
  end
end
=begin
  it 'should release a bike if there are bikes' do
    @docked_bikes = Bike.new
    expect(subject.release_bike).to be @docked_bikes
  end
=end
