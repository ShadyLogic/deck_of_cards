CARD_VALUES = ['2','3','4','5','6','7','8','9','10','J','Q','K','A']
CARD_SUITS = ['♠','♥','♦','♣']

class Deck
  attr_reader :cards

  def initialize
    @cards = []
    new_deck
    shuffle
  end

  def shuffle
    @cards.shuffle!
  end

  def new_deck
    new_deck = []
    CARD_SUITS.each do |suit|
      CARD_VALUES.each do |value|
        new_deck << Card.new(value, suit)
      end
    end
    @cards = new_deck
  end

  def deal(num = 1)
    @cards.pop(num)
  end

  def top_card
    @cards.pop
  end
end

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def to_s
    "#{value}#{suit}"
  end
end













