class Transfer
 
 attr_accessor :sender, :receiver, :status, :amount
 
 def initialize(sender, receiver, amount, status="pending")
   @sender = sender
   @receiver = receiver
   @amount = amount
   @status = status
 end
 
 def valid?
  if sender.valid? && receiver.valid?
    true 
  else 
    false 
  end
 end
 
 def execute_transaction
  if valid? && receiver.balance > @amount && @status == "complete"
    sender.deposit(@amount)
    receiver.withdrawl(@amount)
    @status = "reversed"
  else 
    @status = "rejected"
    "Transaction rejected. Please check your account balance."
  end
 end
 
end
