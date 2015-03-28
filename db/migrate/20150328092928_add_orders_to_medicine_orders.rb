class AddOrdersToMedicineOrders < ActiveRecord::Migration
  def change
    add_reference :medicine_orders, :order, index: true
    add_foreign_key :medicine_orders, :orders
  end
end
