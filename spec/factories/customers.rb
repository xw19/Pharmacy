FactoryGirl.define do
  factory :customer do
    order nil
    name "MyString"
    address_line1 "399-A Linuc Road"
    address_line2 "Test street"
    city_village "Moscow"
    district "Burdwan"
    state "California"
    country "Brazil"
    pin "700060"
  end

end
