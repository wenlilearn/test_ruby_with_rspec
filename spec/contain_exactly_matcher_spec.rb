# Test if the array contains all elements. Order doesn't matter
# Check presenence of all the elements
RSpec.describe 'contain_exactly matcher' do
  subject { [1, 2, 3] }

  context 'long form syntax' do
    it 'should check for the presence of all elements' do
      expect(subject).to contain_exactly(1, 2, 3)
      expect(subject).to contain_exactly(1, 3, 2)
    end
  end
end