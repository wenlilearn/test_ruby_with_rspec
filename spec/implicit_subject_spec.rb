RSpec.describe Hash do
  # subject = let(:subject) { {} }
  it 'should start off empty' do
    expect(subject).to be_an_instance_of(Hash)
    expect(subject.length).to eq(0)
    subject[:test] = "test"
    expect(subject.length).to eq(1)
  end

  it 'isolated between examples' do
    expect(subject.length).to eq(0)
  end
end