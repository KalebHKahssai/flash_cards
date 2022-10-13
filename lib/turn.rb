class Turn
  attr_reader :card, :guess, :feedback
  def initialize(guess, card)
    @guess = guess
    @card = card
  end

  def correct?
    true
  end

  def feedback
    "Correct!"
  end  
end
