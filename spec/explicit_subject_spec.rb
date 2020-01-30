RSpec.describe Hash do
  # subject { {} } = let(:subject) { {} }
  # Whatever returns from the block becomes the subject
  subject(:subject_hash) do
    {a: 1, b: 2}
  end

  it 'has 2 keyvalue pairs' do
    expect(subject.length).to eq(2)
    expect(subject_hash.length).to eq(2)
  end

  context 'nested' do
    subject do
      {a: 1}
    end
    it 'inner can change and access outer' do
      expect(subject.length).to eq(1)
      expect(subject_hash.length).to eq(2)
    end
  end
end