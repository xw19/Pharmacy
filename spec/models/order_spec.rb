require 'rails_helper'

RSpec.describe Order, type: :model do
  it "should be valid" do
    order = FactoryGirl.build(:order)
    expect(order).to be_valid
  end
end
