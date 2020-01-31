# class Deck
#   def self.build
#     # Business logic here
#   end
# end

class CardGame
  attr_reader :cards

  def start
    @cards = Deck.build
  end
end

RSpec.describe CardGame do
  it 'can only implement class methods that are defined on a class' do
    # Error: shuffle not exist! Can't even run the tests
    # class_double(Deck, build: ['Ace'], shuffle: "")

    # class_double(Deck, build: ['Ace'])

    # String will also work in case the class doesn't exist
    # as_stubbed_const make sure that all subsequensive calls
    # to the class will be redirected to the class_double
    class_double('Deck', build: ['Ace']).as_stubbed_const

    expect(Deck).to receive(:build).and_return(['Ace'])
    subject.start
    expect(subject.cards).to eq(["Ace"])
  end
end