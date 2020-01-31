# Allow not limited to doubles, can be used for real objects as well

RSpec.describe 'allow method review' do
  it 'can customize return values for methods' do
    calculator = double
    allow(calculator).to receive(:add).and_return(10)

    expect(calculator.add(1,2)).to eq(10)
  end

  it 'can stub one or more methods on a real object' do
    arr = [1, 2, 3]
    allow(arr).to receive(:sum).and_return(-1)

    expect(arr.sum).to eq(-1)

    arr.push(4)
    expect(arr).to eq([1,2,3,4])
  end

  it 'can return multiple values in sequence' do
    mock_array = double()
    allow(mock_array).to receive(:pop).and_return(:c, :b, nil)

    # expect(mock_array).to receive(:pop).and_return(:c)
    # expect(mock_array).to receive(:pop).and_return(:b)
    # expect(mock_array).to receive(:pop).and_return(nil)
    # expect(mock_array).to receive(:pop).and_return(nil)

    # mock_array.pop
    # mock_array.pop
    # mock_array.pop
    # mock_array.pop
    expect(mock_array.pop).to eq(:c)
    expect(mock_array.pop).to eq(:b)
    expect(mock_array.pop).to eq(nil)
    expect(mock_array.pop).to eq(nil)
  end
end