# be must be wrapped in parathesis
RSpec.describe 25 do
  it 'can test for multiple matchers' do
    expect(subject).to be_odd.and be > 20
    expect(subject).to (be > 50).or be < 30
  end
end

RSpec.describe [:a, :b, :c] do
  it 'can check multiple' do
    expect(subject.sample).to eq(:a).or eq(:b).or eq(:c)
  end
end