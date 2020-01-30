RSpec.describe 'include matcher' do
  context 'hot chocolate' do
    it 'checks for substring inclusion' do
      expect(subject).to include('choco')
    end
    it { is_expected.to include('cho') }
  end
  it { is_expected.to include('clude') }

  context [10, 20, 30] do
    it { is_expected.to include(20) }
  end

  # check for key or key-value pair
  context ({ a: 1, b: 2 }) do
    it { is_expected.to include(:a) }
    it { is_expected.to include(b: 2) }
  end
end