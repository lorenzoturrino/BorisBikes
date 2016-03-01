require 'docking_station.rb'

describe DockingStation do

  describe 'Bike releasing functions:' do
    it { is_expected.to respond_to(:release_bike) }
    it 'release method returns a object that is an instance of Bike' do
      subject.return_bike(Bike.new)
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

  describe 'Bike storage functions:' do
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
    it 'return_bike will accept bikes up to 20' do
      expect {
        21.times do
          subject.return_bike(Bike.new)
        end
      }.not_to raise_error
    end
  end

  describe 'Mixed functions:' do
    it 'released bike is working' do
      subject.return_bike(Bike.new)
      expect(subject.release_bike.working?).to be true
    end
    it 'show_bike returns the bike in storage' do
      bike = Bike.new
      subject.return_bike(bike)
      expect(subject.show_bike).to eq(bike)
    end
  end

end
