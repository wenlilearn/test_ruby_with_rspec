#.to all(matchers) -> will run for every element through the matcher
RSpec.describe "all matcher" do
  it 'allows for aggregate checks' do
    expect([1,3,5]).to all(be_odd)
    expect([1,3,5]).to all(be < 6)
  end
end