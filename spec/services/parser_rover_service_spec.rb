describe ParserRoverService do
  it 'must parse rover file' do
    file = File.read('spec/fixtures/rover.txt')

    expect(subject.parse(file)).to eq(['1 3 N', '5 1 E'])
  end
end
