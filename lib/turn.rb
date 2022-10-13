class Turn
  attr_reader :card, :guess, :feedback
  def initialize(guess, card)
    @guess = guess
    @card = card
  end

  def correct?
    if @guess == @answer
      return true
    else return false
    end
  end

  def feedback
    if correct? == true
      return "correct!"
    elsif correct? == false
    return "Incorrect."
  end
end
end
