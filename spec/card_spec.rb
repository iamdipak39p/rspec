class Card
  attr_reader :type, :rank

  def initialize(rank,type)
    @type = type
    @rank = rank
  end
end

RSpec.describe "Card" do
  it 'has type' do
    card = Card.new('Ace', 'Spades')
    expect(card.type).to eq('Spades')
  end

  it 'has rank' do
    card = Card.new('Ace', 'Spades')
    expect(card.rank).to eq('Ace')
  end
end



