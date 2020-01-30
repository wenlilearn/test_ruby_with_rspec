# Before/After hooks act in the same order
RSpec.describe 'nested hooks' do
  before(:context) do
    puts 'Outer Before context' # step 1
  end

  # Outer before will run for nested examples also
  before(:example) do
    puts 'Outer Before example' # step 2, step 5
  end

  it 'does basic math' do
    expect(1 + 1).to eq(2) # step 3
  end

  context 'with condition A' do
    before(:context) do
      puts 'Inner Before context' # step 4
    end

    before(:example) do
      puts 'Inner Before example' # step 6
    end

    it 'does basic math' do
      expect(1 + 1).to eq(2) # step 7
    end
  end
end