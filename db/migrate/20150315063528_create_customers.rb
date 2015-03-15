class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.references :order, index: true
      t.string :name
      t.string :address_line1
      t.string :address_line2
      t.string :city_village
      t.string :district
      t.string :state
      t.string :country
      t.string :pin

      t.timestamps null: false
    end
    add_foreign_key :customers, :orders
  end
end
