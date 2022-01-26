require 'oystercard.rb'

describe Oystercard do
    let(:card){Oystercard.new(10)}
    let(:entry_station){double :station}

    it 'can begin with a balance' do
    expect(card.balance).to eq(10)
    end

    it 'can be topped up' do
    expect(card.top_up(20)).to eq(30)
    end

    it 'does not exceed the limit' do
      expect {card.top_up(100)}.to raise_error("Exceeds max balance of #{Oystercard::LIMIT}")
    end

    it 'can touch in to the barrier' do
        card.touch_in(entry_station)
        expect {card.in_journey?} == true
    end

    it 'can touch out of the barrier' do
        card.touch_out
        expect {card.in_journey?} == false
    end

    it 'does not touch out if balance cannot cover fare' do
        card.balance = 0
        expect {card.touch_in(entry_station)}.to raise_error "Not enough balance for fare of £#{Oystercard::FARE}"
    end

    it 'deducts the fare from balance when touching out' do
        expect {card.touch_out}.to change{card.balance}.by(-1)
    end

    it 'remember the entry station after touch_in' do
    expect(card.touch_in(entry_station)).to eq(entry_station)
    end
end
