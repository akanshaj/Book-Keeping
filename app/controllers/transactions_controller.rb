class TransactionsController < ApplicationController
  def get_transaction_by_timestamp
    p "Filtering transaction on the basis of timestamp"
    @transactions = Transaction.order(created_by: :asc)

    render json: @transactions
  end

  def create
    transaction_type = params["type"]
    amount = params["amount"]
    customer_id = params["customer_id"]

    p transaction_type
    p amount
    p customer_id

    @transaction = Transaction.new.create_transaction(transaction_type , amount , customer_id)
    render json: @transaction
  end

  def get_all_transaction_by_phone_no
    phone_no = params["phone_no"]
    p "phone no detail is" + phone_no

    customer = Customer.new.get_customer_by_phone_no(phone_no)
    if customer.count > 0 then
      customer_id = customer.pluck(:id).first
      @transactions = Transaction.new.get_all_transaction_by_customer_id(customer_id)

      render json: @transactions
    else
      render json: {
        message: "No entry found"
      }
    end
  end

  def index
    @transactions = Transaction.new.get_all_transaction

    render json: @transactions
  end

  def show
    @transaction = Transaction.find(params["id"])

    render json: @transaction
  end

  end

