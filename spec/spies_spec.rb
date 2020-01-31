RSpec.describe 'spies' do
  let(:animal) { spy('animal') }

  it 'confirms that a message has been received' do
    animal.eat_food
    expect(animal).to have_received(:eat_food)
    expect(animal).not_to have_received(:bark)
  end

  it 'resets between example' do
    expect(animal).not_to have_received(:eat_food)
  end

  it 'retains the same functionality of a regular double' do
    allow(animal).to receive(:test).and_return("test")
    animal.test
    expect(animal).to have_received(:test)
  end
end