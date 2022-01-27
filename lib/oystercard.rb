class Oystercard
attr_accessor :balance, :entry_station, :exit_station
attr_reader :journey_log

LIMIT = 90
FARE = 1

   def initialize(balance = 0)
     @balance = balance
   #   @journey_log = ({})
   end

   def top_up(amount)
      if (@balance += amount) >= LIMIT
         raise "Exceeds max balance of #{Oystercard::LIMIT}"
      else @balance
      end
   end

   def touch_in(entry_station)
      fail "Not enough balance for fare of £#{Oystercard::FARE}" if @balance <= Oystercard::FARE 
      @entry_station = entry_station
   end

   def touch_out(exit_station)
      @entry_station
      self.deduct(FARE)
      # journey_log.merge!(entry_station => exit_station)
      entry_station = nil
      exit_station
   end

   # def in_journey?
   #    ! !entry_station
   # end

   private

   def deduct(amount)
      @balance -= amount
   end
end