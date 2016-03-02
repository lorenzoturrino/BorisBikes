require 'docking_station'

describe DockingStation do

    describe '#release_bike:' do
      it { is_expected.to respond_to :release_bike }
      it 'releases a bike' do
        bike = double(:bike, working?: true)
        subject.dock(bike)
        expect(subject.release_bike).to eq bike
      end
      it 'raises an error when there are no bikes available' do
        expect { subject.release_bike }.to raise_error 'No bikes available'
      end
      it 'releases only working bikes' do
        bike = double(:bike, working?: false)
        subject.dock(bike)
        expect {subject.release_bike}.to raise_error 'No bikes available'
      end
    end

    describe '#dock:' do
      it { is_expected.to respond_to(:dock).with(1).argument }
      it 'dock method accept up to max capacity of bikes' do
          bike = double(:bike, working?: true)
          expect {
          DockingStation::DEFAULT_CAPACITY.times do
            subject.dock(bike)
          end
        }.not_to raise_error
      end
      it 'dock method refuses bike if over capacity' do
        bike = double(:bike, working?: true)
        expect {
          (DockingStation::DEFAULT_CAPACITY + 1).times do
            subject.dock(bike)
          end
        }.to raise_error("Station is full")
      end
      it 'dock method accept both broken and working bikes' do
          bike = double(:bike, working?: false)
        expect {
          subject.dock(bike)
        }.not_to raise_error
          bike = double(:bike, working?: true)
        expect {
          subject.dock(bike)
        }.not_to raise_error
      end
    end

    describe 'class properties:' do
      it { is_expected.to respond_to(:bike_array) }
      it 'returns docked bikes' do
   		    bike = double(:bike, working?: true)
    	    subject.dock(bike)
    	     expect(subject.bike_array.last).to eq bike
      end
      it 'uses DEFAULT_CAPACITY when supplied no args' do
        station = DockingStation.new
        expect(station.bike_capacity).to eq(20)
      end
      it 'uses the given value as capacity when supplied one' do
        station = DockingStation.new(55)
        expect(station.bike_capacity).to eq(55)
      end

    end
end
