require './output'

describe Output do
  let(:output) { Output.new }

  it 'should put 1 for 1' do
    expect(STDOUT).to receive(:puts).with(1)
    output.for(1)
  end

  it 'should put fizz for 3' do
    expect(STDOUT).to receive(:puts).with('fizz')
    output.for(3)
  end

  it 'should put buzz for 5' do
    expect(STDOUT).to receive(:puts).with('buzz')
    output.for(5)
  end

  it 'should put fizzbuzz for 15' do
    expect(STDOUT).to receive(:puts).with('fizz buzz')
    output.for(15)
  end
end
