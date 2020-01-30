RSpec.describe 'before and after hooks' do
  before(:context) do
    puts 'Before context'
  end
  before(:example) do
    puts 'Before example'
  end

  after(:example) do
    puts 'After example'
  end
  after(:context) do
    puts 'After context'
  end

  it 'is just a random example' do
    expect(1 + 1).to eq(2)
  end

  it 'is just another random example' do
    expect(1 + 1).to eq(2)
  end
end