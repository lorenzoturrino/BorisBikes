
shared_examples 'a container' do
  let(:container) { described_class.new}
  let(:bike)  { double:bike , working?: true}

  it 'contains an array of bikes' do
    expect(container).to respond_to(:bike_array)
  end

  it 'has a non-zero capacity' do
    expect(container.capacity).to be > 0
  end

  it 'accepts bikes with a store_bike method' do
    expect(container).to respond_to(:store_bike).with(1).argument
  end

  it 'unloads a bike with a release_bike method' do
    container.store_bike(bike)
    expect(container.release_bike).to eq(bike)
  end

  it 'raises an error if trying to store when full' do
    expect {
      (container.capacity+1).times do
          container.store_bike(bike)
      end
    }.to raise_error("storage is full")
  end

  it 'raises and error if trying to release when empty' do
    expect { container.release_bike }.to raise_error("storage is empty")
  end

end
