class AddMobileToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :mobile, :string
    add_column :customers, :phone, :string
  end
end
