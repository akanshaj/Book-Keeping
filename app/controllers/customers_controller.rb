class CustomersController < ApplicationController

  def create
    name = params["name"]
    phone_no = params["phone_no"]

    customer_obj = Customer.new
    if (customer_obj.get_customer_by_phone_no(phone_no).count > 0)
      render json: {
        message: "Record exist"
      }
    else
      @customer = Customer.new.create_customer(params["name"] , params["phone_no"])
      render json: @customer
    end
  end

  def index
    @customers = Customer.new.get_all_customers

    render json: @customers
  end

  def show
    @customer = Customer.find(params["id"])

    render json:@customer
  end
end
