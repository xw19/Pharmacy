require 'rails_helper'

RSpec.describe Customer, type: :model do

  it "should be valid" do
    customer = FactoryGirl.build(:customer)
    expect(customer).to be_valid
  end

  it "name should be present" do
    customer = FactoryGirl.build(:customer, name: "")
    expect(customer).not_to be_valid
  end

  it "name should not be too long" do
    customer = FactoryGirl.build(:customer, name: "a" * 51)
    expect(customer).not_to be_valid
  end

  it "name should be present" do
    customer = FactoryGirl.build(:customer, address_line1: "")
    expect(customer).not_to be_valid
  end

  it "name should not be too long" do
    customer = FactoryGirl.build(:customer, address_line1: "a" * 151)
    expect(customer).not_to be_valid
  end
end
