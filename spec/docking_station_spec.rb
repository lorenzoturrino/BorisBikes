require 'docking_station'

describe DockingStation do

  let(:bike) {double :bike}

  describe 'release_bike' do

    it 'raises exception when no bikes to release' do
      expect{subject.release_bike}.to raise_error 'No bikes to release' if subject.bikes.empty?
    end

    it 'expects bike to be released and bike to work' do
      allow(bike).to receive(:working?).and_return(true)
      allow(bike).to receive(:broken).and_return(false)
      subject.dock bike
      expect(subject.release_bike).to be_working
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
      allow(bike).to receive(:broken).and_return(true)
      subject.dock(bike)
      expect{subject.release_bike}.to raise_error 'No bikes to release'
    end

    it 'accepts all bikes' do
      allow(bike).to receive(:report_broken).and_return(true)
      bike.report_broken
      subject.dock(bike)
      expect(subject.bikes).to include(bike)
    end

  end

end
