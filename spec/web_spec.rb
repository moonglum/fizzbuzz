require 'open-uri'

describe 'Web Service' do
  it 'should return 1 for 1' do
    result = open('http://localhost:9292/?number=1')
    expect(result.read).to eq '1'
  end

  it 'should return fizz for 3' do
    result = open('http://localhost:9292/?number=3')
    expect(result.read).to eq 'fizz'
  end

  it 'should return buzz for 5' do
    result = open('http://localhost:9292/?number=5')
    expect(result.read).to eq 'buzz'
  end

  it 'should return fizzbuzz for 15' do
    result = open('http://localhost:9292/?number=15')
    expect(result.read).to eq 'fizzbuzz'
  end
end
