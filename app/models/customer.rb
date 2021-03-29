class Customer < ApplicationRecord

  def create_customer(name, phone_no)
    customer = Customer.new
    customer.name = name
    customer.phone_no = phone_no
    customer.save

    p "Customer created successfully"
  end

  def get_all_customers
    Customer.all
  end

  def get_customer_by_phone_no(phone_no)
    p "Readind DB for phone no: " + phone_no
    Customer.where(phone_no: phone_no)
  end
end
