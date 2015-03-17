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

  it "address line 1 should be present" do
    customer = FactoryGirl.build(:customer, address_line1: "")
    expect(customer).not_to be_valid
  end

  it "address line 1 should not be too long" do
    customer = FactoryGirl.build(:customer, address_line1: "a" * 151)
    expect(customer).not_to be_valid
  end

  it "address_line 2 should be present" do
    customer = FactoryGirl.build(:customer, address_line2: "")
    expect(customer).not_to be_valid
  end

  it "address line 2 should not be too long" do
    customer = FactoryGirl.build(:customer, address_line2: "a" * 151)
    expect(customer).not_to be_valid
  end

  it "city should be present" do
    customer = FactoryGirl.build(:customer, city_village: "")
    expect(customer).not_to be_valid
  end

  it "city should not be too long" do
    customer = FactoryGirl.build(:customer, city_village: "a" * 21)
    expect(customer).not_to be_valid
  end

  it "district should be present" do
    customer = FactoryGirl.build(:customer, district: "")
    expect(customer).not_to be_valid
  end

  it "district should not be too long" do
    customer = FactoryGirl.build(:customer, district: "a" * 21)
    expect(customer).not_to be_valid
  end
end
