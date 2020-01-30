# DRY for shared example
RSpec.shared_examples 'subject with 3 items' do
  it 'returns the length' do
    expect(subject.length).to eq(3)
  end
end

RSpec.describe Array do
  subject { [1,2,3] }
  include_examples 'subject with 3 items'
end

RSpec.describe String do
  subject { "123" }
  include_examples 'subject with 3 items'
end

RSpec.describe Hash do
  subject { {a: 1, b: 2, c: 3} }
  include_examples 'subject with 3 items'
end

class SausageLink
  def length
    3
  end
end

RSpec.describe SausageLink do
  subject { described_class.new }
  include_examples 'subject with 3 items'
end


RSpec.shared_examples 'an object with 3 items' do
  it 'returns the length' do
    expect(obj.length).to eq(3)
  end
end

RSpec.describe Array do
  let(:obj) { [1,2,3] }
  include_examples 'an object with 3 items'
end

RSpec.describe String do
  let(:obj) { "123" }
  include_examples 'an object with 3 items'
end

RSpec.describe Hash do
  let(:obj) { {a: 1, b: 2, c: 3} }
  include_examples 'an object with 3 items'
end