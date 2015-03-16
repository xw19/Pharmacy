require 'rails_helper'

RSpec.describe Customer, type: :model do

  it "should be valid" do
    customer = FactoryGirl.build(:customer)
    expect(customer).to be_valid
  end

end
