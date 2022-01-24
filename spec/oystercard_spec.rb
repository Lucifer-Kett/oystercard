require 'oystercard.rb'

describe Oystercard do
    card = Oystercard.new
    it 'can begin with a balance' do
    expect(card = 30).to eq(30)
    end
end