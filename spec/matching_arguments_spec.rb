RSpec.describe 'matching arguments' do
  it 'can return different values depending on the arguments' do
    three_elements_array = double

    allow(three_elements_array).to receive(:first).with(no_args).and_return(1)
    allow(three_elements_array).to receive(:first).with(1).and_return([1])
    allow(three_elements_array).to receive(:first).with(2).and_return([1, 2])
    allow(three_elements_array).to receive(:first).with(be >= 3).and_return([1, 2, 3])

    expect(three_elements_array.first).to eq(1)
    expect(three_elements_array.first(1)).to eq([1])
    expect(three_elements_array.first(2)).to eq([1, 2])
    expect(three_elements_array.first(3)).to eq([1, 2, 3])
    expect(three_elements_array.first(100)).to eq([1, 2, 3])
  end
end