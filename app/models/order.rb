class Order < ActiveRecord::Base
  has_many :medicine_orders
end
