require 'oystercard.rb'

describe Oystercard do
    card = Oystercard.new(10)

    it 'can begin with a balance' do
    expect(card.balance).to eq(10)
    end

    it 'can be topped up' do
    expect(card.top_up(20)).to eq(30)
    end

    it 'does not exceed the limit' do
      expect {card.top_up(100)}.to raise_error("Exceeds max balance of #{Oystercard::LIMIT}")
    end

    it 'can deduct the money' do
       card.balance = 10
        expect(card.deduct(5)).to eq(5)
    end

    it 'can touch in to the barrier' do
        card.touch_in
        expect {card.in_journey?} == true
    end

    it 'can touch out of the barrier' do
        card.touch_out
        expect {card.in_journey?} == false
    end

    it 'does not touch out if balance cannot cover fare' do
        card.balance = 0
        expect {card.touch_in}.to raise_error('Not enough balance for fare')
    end
end
