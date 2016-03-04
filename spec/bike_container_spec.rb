require 'bike_container'

shared_examples 'a container' do

  let(:container) {described_class.new}

  it 'accepts a group of bikes' do
    expect(container).to respond_to(:load_bikes).with(1).argument
  end

  it 'loads bikes' do
    bike = double(:bike)
    container.load_bikes([bike])
    expect(container.list_bikes).to eq([bike])
  end

  # it 'can list us the bikes' do
  #  bike = double(:bike)
  #  expect(subject.list_bikes).to eq([bike])
  # end

end
