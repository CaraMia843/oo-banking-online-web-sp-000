class Transfer
 
 attr_accessor :sender, :receiver, :status, :amount, :count
 
 def initialize(sender, receiver, amount)
   @sender = sender
   @receiver = receiver
   @amount = amount
   @status = "pending"
 end
 
end
