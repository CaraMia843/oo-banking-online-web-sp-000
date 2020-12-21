class Transfer
 
 attr_accessor :sender, :reciever, :status, :amount, :count
 
 def initialize(sender, reciever, amount)
   @sender = sender
   @reciever = reciever
   @amount = amount
 
end
