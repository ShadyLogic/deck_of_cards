class Hand
  attr_reader :cards

  def initialize()
    @cards = []
  end

  def show_hand
    cards.each { |card| puts card }
  end

  def give_cards(new_cards)
    new_cards.each { |card| cards << card }
  end
end
