RSpec.describe "change matcher" do
  subject { [1, 2, 3] }
  it 'checks that a method changes object state' do
    # NOTE: Not recommended. Coupled with length
    expect { subject.push(4) }.to change { subject.length }.from(3).to(4)
    # NOTE: recommended. Test delta
    expect { subject.push(4) }.to change { subject.length }.by(1)
  end

  it 'accepts negative arguments' do
    expect { subject.pop() }.to change { subject.length }.by(-1)
  end
end