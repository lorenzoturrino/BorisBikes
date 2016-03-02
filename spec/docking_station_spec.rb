require 'docking_station'

describe DockingStation do

  describe 'initialize' do

    it 'creates a capacity limit' do 
      station = DockingStation.new 3
      3.times{station.dock(Bike.new)}
      expect{station.dock(Bike.new)}.to raise_error 'Docking Station full'
    end

  end

  describe 'release_bike' do

    # try not to use - but for reference,
    # let(:bike) {Bike.new}

    it 'releases a bike' do
      station = DockingStation.new
      station.dock(Bike.new)
      expect(station.release_bike).to be_a Bike
    end

    it 'raises exception when no bikes to release' do
      station = DockingStation.new
      expect{station.release_bike}.to raise_error 'No bikes to release' if station.bikes.nil?
    end

  end

  describe 'working?' do

    it 'can test bike works' do
      expect(Bike.new).to respond_to :working?
    end

    it 'bike works' do
      expect(Bike.new).to be_working
    end

  end

  describe 'dock' do

    it 'docks a bike' do
      expect(DockingStation.new).to respond_to(:dock).with(1).argument
    end

    it 'docks given bike' do
      station = DockingStation.new
      bike = Bike.new
      station.dock(bike)
      expect(station.bikes).to eq([bike])
    end

    it 'raises an exception when there is already a bike docked' do
      station = DockingStation.new
      DockingStation::DEFAULT_CAPACITY.times{station.dock(Bike.new)}
      expect{station.dock(Bike.new)}.to raise_error 'Docking Station full'
    end

  end

  describe 'bikes' do

    it 'stores bikes' do
      expect(DockingStation.new).to respond_to(:bikes)
    end

  end

end
