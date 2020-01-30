class King
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

# described_class helps to decouple tests with class names
RSpec.describe King do
  subject { described_class.new("1") }
  let(:ii) { described_class.new("2") }

  it 'represents a king' do
    expect(subject).to be_an_instance_of(described_class)
    expect(ii).to be_an_instance_of(described_class)
  end
end