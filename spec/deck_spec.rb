require './lib/card'
require './lib/deck'
require 'pry';

RSpec.describe Deck do
  it 'exists' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    expect(card_1).to be_instance_of(Card)
    # binding.pry
  end

  it 'can make deck' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)

    expect(deck).to be_instance_of(Deck)
    # binding.pry
  end

  it 'cards method' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_3 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)

    expect(deck.cards).to be_instance_of(Array)
    # binding.pry
  end

  it 'count method' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_3 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)

    expect(deck.count).to eq(3)
    # binding.pry
  end

  it 'cards in category STEM' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :STEM)
    card_2 = Card.new("What is the capital of Alaska?", "Juneau", :STEM)
    card_3 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)

    expect(deck.cards_in_category(:STEM)).to eq([card_1, card_2])
    # binding.pry
    expect(deck.cards_in_category(:Geography)).to eq([card_3])

    expect(deck.cards_in_category("Pop Culture")).to eq([])
  end
end
