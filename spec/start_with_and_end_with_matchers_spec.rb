# Match beginning and/or end of the string. Case sensitive
RSpec.describe 'start_with and end_with matcher' do
  describe 'catepillar' do
    it 'should check for substring at the beginning or end' do
      expect(subject).to start_with('cat')
      expect(subject).to end_with('pillar')
    end

    it { is_expected.to start_with('cat') }
  end

  describe [:a, :b, :c] do
    it 'should check elements at the beginning or end of the array' do
      expect(subject).to start_with(:a)
      expect(subject).to start_with(:a, :b)
    end
  end
end