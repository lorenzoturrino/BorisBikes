require 'docking_station'

describe DockingStation do

  let(:bike) {double :bike, broken: false}
  let(:broken_bike) {double :bike, broken: true}

  describe 'release_bike' do

    it 'raises exception when no bikes to release' do
      expect{subject.release_bike}.to raise_error 'No bikes to release' if subject.bikes.empty?
    end

    it 'expects bike to be released and bike to work' do
      subject.dock bike
      expect(subject.release_bike).to be bike
    end

  end

  describe 'dock' do

    it 'docks given bike' do
      subject.dock(bike)
      expect(subject.bikes).to eq([bike])
    end

    it 'raises an exception when there is already a bike docked' do
      subject.capacity.times{subject.dock(bike)}
      expect{subject.dock(bike)}.to raise_error 'Docking Station full'
    end

    it 'does not release broken bike' do
      subject.dock(broken_bike)
      expect{subject.release_bike}.to raise_error 'No bikes to release'
    end

    it 'accepts all bikes' do
      bike = double(:bike, report_broken: true)
      bike.report_broken
      subject.dock(bike)
      expect(subject.bikes).to include(bike)
    end

  end

end
