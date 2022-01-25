class Oystercard
attr_reader :balance

LIMIT = 90

   def initialize(balance = 0)
     @balance = balance
   end

   def top_up(amount)
      if (@balance += amount) >= LIMIT
         raise "Exceeds max balance of #{Oystercard::LIMIT}"
      else @balance
      end
   end

   def deduct(amount)
         @balance -= amount
   end
end