require 'garage'

describe Garage do

  it_behaves_like 'a bike_container'

  describe 'fix' do
    it 'expect the :fix method to be called on bike' do
      dummy_bike = double(:bike, broken: true)
      subject.load_bike(dummy_bike)
      expect(dummy_bike).to receive(:fix)
      subject.fix_all_bikes
    end
  end
end
