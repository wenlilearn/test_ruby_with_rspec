RSpec.describe "be matchers" do
  it 'can test for truthiness' do
    expect(true).to be_truthy
    expect([]).to be_truthy
    expect("").to be_truthy
    expect(0).to be_truthy
  end

  it 'can test for falseness' do
    expect(false).to be_falsey
    expect(nil).to be_falsey
    expect(nil).to be_nil
  end
end