class TransactionDetails

  attr_accessor :type, :amount , :timestamp

  def initialize(type,amount,phone_no,timestamp)
    @type = type
    @amount = amount
    @timestamp = timestamp
  end
end