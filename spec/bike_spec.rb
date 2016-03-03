require 'bike'

describe Bike do
  it {is_expected.to respond_to :working}
  it { expect(subject.working).to be true||false }

=begin
  it 'I should be abe to set a status for bike' do
    subject.working=false
    expect(subject.working).to eq false
  end
=end

  it 'I should be abe to set a status for bike' do
    bike = Bike.new
    bike.working=false
    expect(bike.working).to eq false
  end

end
