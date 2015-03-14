require 'rails_helper'

RSpec.describe MedicineOrder, type: :model do

  it "should be valid" do
    medicine_order = FactoryGirl.build(:medicine_order)
    expect(medicine_order).to be_valid
  end

  it "medicine name should be present" do
    medicine_order = FactoryGirl.build(:medicine_order, medicine_name: "")
    expect(medicine_order).not_to be_valid
  end

  it "medicine name should not be too long" do
    medicine_order = FactoryGirl.build(:medicine_order, medicine_name: "a" * 51)
    expect(medicine_order).not_to be_valid
  end

end
