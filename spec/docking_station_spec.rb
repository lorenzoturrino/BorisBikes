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
      it 'docks something' do
      	bike = Bike.new
      	expect(subject.dock(bike)).to eq bike
      end
      it 'dock method raises an error when trying to dock to a full rack' do
        expect {
          while true do
            subject.dock(Bike.new)
          end
        }.to raise_error("Station is full")
      end
    end

    it { is_expected.to respond_to(:bike) }

    it 'returns docked bikes' do
   		bike = Bike.new
    	subject.dock(bike)
    	expect(subject.bike).to eq bike
    end

end
