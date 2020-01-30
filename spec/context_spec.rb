RSpec.describe '#even?' do
  # BAD: Desc with condition. Need to read carefully.
  # it 'should return true if number is even'
  # it 'should return false if number is odd'

  # Nested describe: Create an additional level of context/description
  # context is just an alias of describe
  context 'with even number' do
    it 'should return true' do
      expect(4.even?).to eq(true)
    end
  end

  context 'with odd number' do
    it 'should return false' do
      expect(5.even?).to eq(false)
    end
  end
end