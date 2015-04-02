class CreateDoctorInfos < ActiveRecord::Migration
  def change
    create_table :doctor_infos do |t|
      t.string :name
      t.string :registration
      t.references :order, index: true

      t.timestamps null: false
    end
    add_foreign_key :doctor_infos, :orders
  end
end
