require 'docking_station'

describe DockingStation do

  describe 'release_bike' do

    it 'releases a bike' do
      subject.dock(Bike.new)
      expect(subject.release_bike).to be_a Bike
    end

    it 'raises exception when no bikes to release' do
      expect{subject.release_bike}.to raise_error 'No bikes to release' if subject.bikes.empty?
    end

  end

  describe 'working?' do

    it 'bike works' do
      subject.dock(Bike.new)
      expect(subject.release_bike).to be_working
    end

  end

  describe 'dock' do

    it 'docks given bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bikes).to eq([bike])
    end

    it 'raises an exception when there is already a bike docked' do
      subject.capacity.times{subject.dock(Bike.new)}
      expect{subject.dock(Bike.new)}.to raise_error 'Docking Station full'
    end

    it 'can be reported as broken' do
      bike = Bike.new
      subject.dock(bike, true)
      expect(bike).to be_broken
    end

    #it 'does not add broken bike to available bikes' do
      #bike = Bike.new
      #expect(subject.dock(bike, false)).to eq(DockingStation.new.bikes)
    #end

  end

end
