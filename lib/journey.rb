require_relative 'oystercard'

class Journey < Oystercard
  attr_reader :journey_log

  def initialize(touch_in)
    # super()
    @journey_log = ({})
  end

  def touch_in(entry_station)
    @entry_station = entry_station
  end

  def touch_out(exit_station)
    @entry_station
    journey_log.merge!(entry_station => exit_station)
    entry_station = nil
    exit_station
  end

  def in_journey?
    ! !entry_station
  end
end