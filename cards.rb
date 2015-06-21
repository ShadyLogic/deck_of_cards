
class Deck
	attr_reader :cards

	def initialize
		@cards = new_deck
	end

	def new_deck
		new_deck = []
		values = ['2','3','4','5','6','7','8','9','10','J','Q','K','A']
		suits = ['♠','♥','♦','♣']
		values.each do |value|
			suits.each do |suit|
				new_deck << Card.new(value,suit)
			end
		end
		new_deck
	end

	def shuffle
		@cards.shuffle!
	end
end

class Card
	attr_reader :value,:suit

	def initialize(value, suit)
		@value = value
		@suit = suit
	end

	def to_s
		"#{value}#{suit}"
	end
end