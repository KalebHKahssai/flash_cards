class Deck
  attr_reader :cards, :count
  def initialize (cards)
    @cards = cards
    @count = cards.length
  end

  def cards_in_category(category)
    category_collection = []
    @cards.each do |card|
      if card.category == category
        category_collection << card
      end
    end
    category_collection
  end
end
