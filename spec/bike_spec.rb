require "bike"

describe Bike do
  it 'can be reported as broken' do
    expect(subject.report_broken).to be(true)
  end

  it 'should respond to fix ' do
    expect(subject).to respond_to(:fix)
  end

  it 'should fix a bike when fix is called' do
    subject.report_broken
    subject.fix
    expect(subject.broken).to eq false
  end

end
