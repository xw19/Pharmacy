class Order < ActiveRecord::Base
  has_many :medicine_orders
  has_one :customer
end
