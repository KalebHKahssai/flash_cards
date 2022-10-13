require './lib/turn'
require './lib/card'
require 'pry';


RSpec.describe Turn do
  it 'exists' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    expect(card).to be_instance_of(Card)
    # binding.pry
  end

  it 'exists' do
    # card = 0
    turn = Turn.new("Juneau","card")

    expect(turn).to be_instance_of(Turn)
    #binding.pry
  end

  it 'exists' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau",card)

    expect(turn.card).to be_instance_of(Card)
    # binding.pry
  end


  it 'has a guess' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau",card)

    expect(turn.guess).to eq("Juneau")
    # binding.pry
  end

  it 'has a correct' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau",card)

    expect(turn.correct?).to eq(true)
    # binding.pry
  end

  it 'has a feedback' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau",card)

    expect(turn.feedback).to eq("Correct!")
    # binding.pry
  end
end
