class OrdersController < ApplicationController

  before_action :authenticate_user!
  before_action :shipping_details

  def index
    @orders = current_user.orders.order('created_at DESC').page params[:page]
  end

  def new
    @order = Order.new
    5.times { @order.medicine_orders.build }
    @order.build_doctor_info
  end


  def create
    @order = Order.new(order_params)
    @order.user = current_user
    if @order.save
      redirect_to root_path, notice: 'Order placed'
    else
      render 'new'
    end
  end

  private

  def order_params
    params.require(:order).permit(:prescription, medicine_orders_attributes: [:id, :medicine_name, :quantity], doctor_info_attributes: [:id, :name, :registration])
  end

  def shipping_details
    unless current_user.customer
      redirect_to new_customer_path, alert: "Please fill out your details"
    end
  end
end
