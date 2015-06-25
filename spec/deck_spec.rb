require_relative '../deck'

describe 'Deck of Cards' do
  let(:deck) { Deck.new }

  it 'should contain Card objects' do
    expect(deck.cards.first).to be_a_kind_of(Card)
  end

  it 'should contain 52 cards' do
    expect(deck.cards.length).to eq(52)
  end

  context '#top_card' do
    it 'should return a Card object' do
      expect(deck.top_card).to be_a_kind_of(Card)
    end

    it 'should remove the card from the deck' do
      expect{deck.top_card}.to change{deck.cards.length}.by(-1)
    end
  end

  context '#deal' do
    it 'should return an array' do
      expect(deck.deal).to be_a_kind_of(Array)
    end

    it 'should return an array of Card objects' do
      expect(deck.deal.first).to be_a_kind_of(Card)
    end

    it 'should return the correct number of cards' do
      expect(deck.deal(5).length).to be(5)
    end

    it 'should remove the cards from the deck' do
      expect{deck.deal(5)}.to change{deck.cards.length}.by(-5)
    end
  end

  context '#shuffle' do
    it 'should shuffle the deck' do
      old_deck = deck.cards.dup
      deck.shuffle
      expect(deck.cards).not_to eq(old_deck)
    end
  end

  context '#new_deck' do
    it 'should reset cards into a full deck' do
      deck.deal(15)
      deck.new_deck
      expect(deck.cards.length).to eq(52)
    end

    it 'should reset cards into an ordered deck' do
      deck.deal(15)
      deck.new_deck
      hand = deck.deal(5)
      hand.map! { |card| card.to_s }
      expect(hand).to eq(["10♣", "J♣", "Q♣", "K♣", "A♣"])
    end
  end

end
