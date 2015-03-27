class CustomersController < ApplicationController
  def new
    @customer =  Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer = Customer.find_or_create_by(customer_params)
      redirect_to root_path, notice: 'Thanks! #{@customer.name} Ordered placed you will be contacted soon'
    else
      render 'new'
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :address_line1, :address_line2, :city_village, :district, :state, :pin, :mobile, :phone)
  end
end
