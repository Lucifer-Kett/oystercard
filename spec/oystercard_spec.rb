require 'oystercard.rb'

describe Oystercard do
    card = Oystercard.new

    it 'can begin with a balance' do
     card1 = Oystercard.new(30)
    expect(card1.balance).to eq(30)
    end

    it 'can be topped up' do
    expect(card.top_up(20)).to eq(20)
    end

    it 'does not exceed the limit' do
       card2 = Oystercard.new(100)
      expect {card.top_up(100)}.to raise_error('Exceeds max balance')
    end
end
