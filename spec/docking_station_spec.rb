require 'docking_station.rb'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }

  it 'bike method returns a bike object' do
    expect(subject.release_bike).to be_a(Bike)
  end

  it 'bike is working' do
    expect(subject.release_bike.working?).to be true
  end

  it 'accept a bike return' do
    expect(subject).to respond_to(:return_bike).with(1).argument
  end

  it 'shows a bike' do
    bike = Bike.new
    dock = DockingStation.new
    dock.release_bike
    dock.return_bike(bike)
    expect(dock.show_bike).to eq(bike)
  end

  it 'fails when releasing a bike storage empty' do
    expect {
      while true
        subject.release_bike
      end
    }.to raise_error(RuntimeError)
  end

  it 'fails when returning a bike when storage full' do
    expect {
      while true
        dummy_bike = Bike.new
        subject.return_bike(dummy_bike)
      end
    }.to raise_error(RuntimeError)

  end



end
