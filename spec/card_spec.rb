class Card
  attr_reader :type, :rank

  def initialize(rank, type)
    @type = type
    @rank = rank
  end

  def to_s
    "#{rank} of #{type}"
  end
end

RSpec.describe Card do
  before(:each) do
    puts "\nSetting up card"
    @card = Card.new('Ace', 'Spades')
  end

  after(:each) do
    puts "Cleaning up card"
    @card = nil
  end

  around(:each) do |example|
    puts "Starting test"
    example.run
    puts "Finished test"
  end

  it 'has type' do
    expect(@card.type).to eq('Spades')
  end

  it 'has rank' do
    expect(@card.rank).to eq('Ace')
  end

  it 'prints nicely' do
    expect(@card.to_s).to eq('Ace of Spades')
  
  end
end
