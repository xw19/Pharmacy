class CustomersController < ApplicationController
  before_action :authenticate_user!

  def new
    @customer =  Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    @customer.user = current_user
    if @customer.save
      redirect_to root_path, notice: 'Thanks! your Details created'
    else
      render 'new'
    end
  end

  def edit
    @customer =  Customer.find(params[:id])
  end


  def update
    @customer = Customer.new(customer_params)
    if @customer = Customer.update(customer_params)
      redirect_to root_path, notice: 'Thanks! your details updated'
    else
      render 'new'
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :address_line1, :address_line2, :city_village, :district, :state, :pin, :mobile, :phone)
  end

end
