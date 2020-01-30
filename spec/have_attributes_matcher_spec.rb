class Pro
  attr_reader :name, :move

  def initialize(name, move)
    @name = name
    @move = move
  end
end

RSpec.describe 'have_attributes matcher' do
  describe Pro.new('test_name', 'test_move') do
    it 'checks for object attributes and proper values' do
      expect(subject).to have_attributes({ name: 'test_name', move: 'test_move' })
    end

    it { is_expected.to have_attributes(name: 'test_name') }
  end
end