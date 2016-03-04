require 'bike_container'

shared_examples_for 'a bike_container' do

  num = 5
  let(:bike_container) {described_class.new(num)}
  let(:bike) {double :bike}

  describe 'load_bike' do

    it 'accepts a group of bikes' do
      expect(bike_container).to respond_to(:load_bike).with(1).argument
    end

    it 'loads bike' do
      bike_container.load_bike(bike)
      expect(bike_container.bikes).to eq([bike])
    end

    it 'raises error if container is full' do
      num.times{bike_container.load_bike(bike)}
      expect{bike_container.load_bike(bike)}.to raise_error('FULL!')
    end

  end

  describe 'release_bike' do

    it 'releases a bike' do
        bike_container.load_bike(bike)
        expect(bike_container.release_bike).to eq(bike)
    end

    it 'raises error when container is empty' do
      expect{bike_container.release_bike}.to raise_error('EMPTY!')
    end

  end


end
