class Order < ActiveRecord::Base
  has_many :medicine_orders
  belongs_to :customer
end
