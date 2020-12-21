class Transfer
 
 attr_accessor :sender, :receiver, :status, :amount, :count
 
 def initialize(sender, receiver, amount)
   @sender = sender
   @receiver = receiver
   @amount = amount
   @status = "pending"
 end
 
 def valid?
  if @sender.valid? && @receiver.valid?
    true 
  else 
    false 
  end
 end
 
 def execute_transaction
   if @sender.balance < @amount
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."   
   elsif
    @status == "complete"
     puts "No more than one transaction available."
    else
     @sender.deposit(@amount * -1)
     @receiver.deposit(@amount)
     @status = "complete"
  
   end
   
   
 end
 
end
