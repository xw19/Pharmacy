class CreateMedicineOrders < ActiveRecord::Migration
  def change
    create_table :medicine_orders do |t|
      t.string :medicine_name
      t.integer :quantity, default: 10

      t.timestamps null: false
    end
  end
end
