require 'oystercard.rb'

describe Oystercard do
    card = Oystercard.new

    it 'can begin with a balance' do
     card = Oystercard.new(30)
    expect(card.balance).to eq(30)
    end
end