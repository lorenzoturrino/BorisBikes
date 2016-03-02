require 'van'

describe Van do

	it 'takes broken bikes' do
	expect(subject).to respond_to(:load_bike).with(1).argument
	end

	it 'unload broken bikes' do
	expect(subject).to respond_to(:unload_bike)
	end

	it 'loads and unloads the same bikes' do
	bike = double :bike
	subject.load_bike(bike)
	expect(subject.unload_bike).to eq bike
	end




	
end