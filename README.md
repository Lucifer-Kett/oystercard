# oystercard

Documentation:
Chal3:
Stack trace -error log
./spec/oystercard_spec.rb.
line 1

Means Oysterdard is not initialized, whilst being called.

Create Oystercard constant class.

Chal4:
Set balance via initialize argument, with a default of 0.

lukecollins@Lukes-MacBook-Air oystercard % irb
3.0.0 :001 > require './lib/oystercard.rb'
 => true 
3.0.0 :002 > card = Oystercard.new(30)
 => #<Oystercard:0x000000015c14a250 @balance=30> 

 