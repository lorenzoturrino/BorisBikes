require 'docking_station'

describe DockingStation do

    describe '#release_bike:' do
      it { is_expected.to respond_to :release_bike }
      it 'releases a bike' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.release_bike).to eq bike
      end

      it 'raises an error when there are no bikes available' do
        expect { subject.release_bike }.to raise_error 'No bikes available'
      end
    end

    describe '#dock:' do
      it { is_expected.to respond_to(:dock).with(1).argument }
      it 'dock method accept up to max capacity of bikes' do
        expect {
          DockingStation::DEFAULT_CAPACITY.times do
            subject.dock(Bike.new)
          end
        }.not_to raise_error
      end
      it 'dock method refuses bike if over capacity' do
        expect {
          (DockingStation::DEFAULT_CAPACITY + 1).times do
            subject.dock(Bike.new)
          end
        }.to raise_error("Station is full")
      end
    end

    it { is_expected.to respond_to(:bike_array) }

    it 'returns docked bikes' do
   		bike = Bike.new
    	subject.dock(bike)
    	expect(subject.bike_array.last).to eq bike
    end

end
