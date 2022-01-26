require 'station'

describe Station do
  let(:station){Station.new}


  it 'shows the station name' do
    expect(station.name('York')).to eq('York')
  end

end
