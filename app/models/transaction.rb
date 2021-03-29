class Transaction < ApplicationRecord
  belongs_to :customer

  def create_transaction(transaction_type, amount, customer_id)
    transaction = Transaction.new
    transaction.transaction_type = transaction_type
    transaction.amount = amount
    transaction.customer_id = customer_id

    if transaction.save then
      return "Transaction created successfully"
    else
      return "Transaction Failed"
    end
  end

  def get_all_transaction
    Transaction.all
  end

  def get_all_transaction_by_type(type)
    Transaction.where(transaction_type:type)
  end

  def get_all_transaction_by_customer_id(customer_id)
    Transaction.where(customer_id: customer_id)
  end
end
