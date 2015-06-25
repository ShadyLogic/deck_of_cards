require_relative 'deck'

class Game

  def initialize
    @deck = Deck.new
    @player1 = Hand.new
    @player2 = Hand.new
  end

end

class Hand
  attr_reader :cards

  def initialize
    @cards = []
  end

  def values
    cards.map { |card| card.value }
  end

  def suits
    cards.map { |card| card.suit }
  end

  def royal_flush?
    return true if straight_flush && values.sort == ["10", "A", "J", "K", "Q"]
    false
  end

  def straight_flush?
    return true if straight? && flush?
    false
  end

  def four_of_a_kind?
    CARD_VALUES.each do |value|
      return true if values.count(value) = 4
    end
    false
  end

  def full_house?
    CARD_VALUES.each do |value|
      if values.count(value) = 3
        CARD_VALUES.each do |value|
          return true if values.count(value) = 2
        end
      end
    end
    false
  end

  def flush?
    CARD_SUITS.each do |suit|
      return true if suits.count(suit) = 5
    end
  end

  def straight?

  end

  def three_of_a_kind?

  end

  def two_pair?

  end

  def pair?

  end

  def high_card

  end

end
