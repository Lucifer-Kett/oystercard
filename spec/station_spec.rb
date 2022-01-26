require 'station'

describe Station do
  let(:station){Station.new}


  it 'shows the station name' do
    expect(station.name('York')).to eq('York')
  end

  it 'shows the station zone' do
    expect(station.zone(1)).to eq(1)
  end
end
