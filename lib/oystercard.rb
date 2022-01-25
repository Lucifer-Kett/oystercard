class Oystercard
attr_reader :balance, :add

   def initialize(balance = 0)
    @balance = balance
    
   end

   def top_up(amount)
    @balance += amount
   end

   # private

   def limit
      p @balance
      fail 'Exceeds max balance' if @balance >= 90
   end
end
