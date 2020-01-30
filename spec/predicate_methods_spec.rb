# Call predicate methods on the object
# Example expect(1).to be_odd = expect(1.odd?).to eq(true)
# be_odd = .odd?
RSpec.describe 'predicate methods' do
  it 'calls predicate methods' do
    expect(1).to be_odd
    expect(2).to be_even
  end

  it 'can be called plainly' do
    expect(1.odd?).to eq(true)
  end
end