require 'garage'

describe Garage do
	it 'accepts bikes' do
	expect(subject).to respond_to(:accept_bikes).with(1).argument
	end
	it 'releases bikes' do
	expect(subject).to respond_to(:return_bikes)
	end
	it 'accepts and releases the same bikes' do
	bike = double :bike
	subject.accept_bikes(bike)
	expect(subject.return_bikes).to eq bike
	end
end
