class CustomerDetails
  attr_accessor :phone_no,:name
  def initialize (phone_no, name)
    @phone_no = phone_no
    @name = name
    p "done"
  end



end
