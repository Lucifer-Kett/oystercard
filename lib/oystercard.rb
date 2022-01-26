class Oystercard
attr_accessor :balance, :entry_station

LIMIT = 90
FARE = 1

   def initialize(balance = 0)
     @balance = balance
     
   end

   def top_up(amount)
      if (@balance += amount) >= LIMIT
         raise "Exceeds max balance of #{Oystercard::LIMIT}"
      else @balance
      end
   end

   def touch_in(entry_station)
      fail "Not enough balance for fare of £#{Oystercard::FARE}" if @balance <= Oystercard::FARE 
      entry_station
   end

   def touch_out
      self.deduct(FARE)
      @entry_station = nil
   end

   def in_journey?
      ! !entry_station
   end

   private

   def deduct(amount)
      @balance -= amount
   end
end