class Transfer

  attr_reader :sender, :reciever, :amount
  attr_accessor :status

  def initialize(sender, reciever, amount)
    @sender = sender
    @reciever = reciever
    @status = "pending"
    @amount = amount
  end

  

  

  
  
end
