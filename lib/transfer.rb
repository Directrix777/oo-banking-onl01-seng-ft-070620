class Transfer

  attr_reader :sender, :reciever, :amount
  attr_accessor :status

  def initialize(sender, reciever, amount)
    @sender = sender
    @reciever = reciever
    @status = "pending"
    @amount = amount
  end

  def valid?
    @sender.valid? && @reciever.valid?
  end

end
