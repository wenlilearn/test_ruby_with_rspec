RSpec.describe 'comparison matchers' do
  it 'allows for comparison with built-in ruby operators' do
    expect(10).to be > 5
    expect(1).to be < 5
    expect(2).to be <= 2
  end

  # Make object as the subject
  context 100 do
    it { is_expected.to be > 90 }
    it { is_expected.to be >= 100 }
    it { is_expected.not_to be < 100 }
  end
end