class Oystercard
attr_accessor :balance, :in_journey

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

   def touch_in
     fail "Not enough balance for fare of £#{Oystercard::FARE}" if @balance <= Oystercard::FARE 
      @in_journey = true 
   end

   def touch_out
       @in_journey = false
       self.deduct(FARE)
   end

   private

   def deduct(amount)
      @balance -= amount
   end
end