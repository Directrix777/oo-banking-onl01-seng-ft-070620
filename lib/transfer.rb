class Transfer

  attr_reader :sender, :receiver, :amount
  attr_accessor :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    if self.valid? && @sender.balance >= amount && @status == "pending"
      @receiver.deposit(@amount)
      @sender.balance = @sender.balance - amount
      @status = "complete"
    else
      "Transaction rejected. Please check your account balance."
      @status = "rejected"
    end
  end

end
