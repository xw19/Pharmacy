class AddPrescriptionToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :prescription, :string
  end
end
