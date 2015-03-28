class CartsController < ApplicationController
  before_action :authenticate_user!

  def show
    
  end

  def add

  end

  def remove

  end

  private

  def current_user_cart
    "cart#{current_user.id}"
  end
end
