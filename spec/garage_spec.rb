require 'garage'

describe Garage do

  describe 'take_bikes' do

    it 'expects to fill the van with broken bikes' do
      broken_bike = double(:bike, broken: true)
      bike = double(:bike, broken: false)
      subject.take_bikes([bike, broken_bike],true)
      expect(subject.bikes).to eq([broken_bike])
    end

  end

  describe 'fix' do
    it 'expect the :fix method to be called on bike' do
      dummy_bike = double(:bike, broken: true)
      subject.take_bikes([dummy_bike],true)
      expect(dummy_bike).to receive(:fix)
      subject.fix_all_bikes
    end
  end
end
