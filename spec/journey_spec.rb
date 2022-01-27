require 'journey'
require 'oystercard'
require 'station'
describe Journey do
  let(:card){Oystercard.new(10)}
  let(:journey){Journey.new}
  let(:entry_station){double :station}
  let(:exit_station){double :station}

  it 'checks that the journey log starts as empty' do
    expect(journey.journey_log).to be_empty
  end

  it 'logs the journey' do
    journey.touch_in('York')
    journey.touch_out('London')
    expect(journey.journey_log).to eq('York' => 'London')
  end

  it 'can touch in to the barrier' do
      journey.touch_in(entry_station)
      expect {journey.in_journey?} == true
    end

  it 'can touch out of the barrier' do
      journey.touch_out(exit_station)
      expect {journey.in_journey?} == false
    end

  it 'can receive an entry station upon forming' do
    expect(Journey.new(York)).to eq(Journey.)
  end
end
