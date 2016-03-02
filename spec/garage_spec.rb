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

  # describe 'fix' do
    #
    # it 'fixes bikes'  do
    #   bike = double :bike
    #   allow(bike).to receive(:broken).and_return(true)
    #   bike.broken
    #   subject.bikes << bike
    #   subject.fix
    #   allow(bike).to receive(:broken).and_return(false)
    #   expect(bike.broken).to eq(false)
    # end

  # end

end
