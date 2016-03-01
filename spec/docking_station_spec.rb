require 'docking_station.rb'

describe DockingStation do

  describe 'Bike releasing functions' do
    it { is_expected.to respond_to(:release_bike) }
    it 'release method returns a object that is an instance of Bike' do
      expect(subject.release_bike).to be_a(Bike)
    end
    it 'release methods raise an exception when trying to release from an empty storage' do
      expect {
        while true
          subject.release_bike
        end
      }.to raise_error(RuntimeError)
    end
  end

  describe 'Bike storage functions' do
    it 'instances of bike respond to return_bike method with 1 arg' do
      expect(subject).to respond_to(:return_bike).with(1).argument
    end
    it 'return_bike raise an exception when trying to store a bike in a full storage' do
      expect {
        while true
          dummy_bike = Bike.new
          subject.return_bike(dummy_bike)
        end
      }.to raise_error(RuntimeError)
    end
  end

  describe 'Mixed functions' do
    it 'released bike is working' do
      expect(subject.release_bike.working?).to be true
    end
    it 'show_bike returns the bike in storage' do
      bike = Bike.new
      dock = DockingStation.new
      dock.release_bike
      dock.return_bike(bike)
      expect(dock.show_bike).to eq(bike)
    end
  end

end
