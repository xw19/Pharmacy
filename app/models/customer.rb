class Customer < ActiveRecord::Base
  has_many :orders

  validates :name , presence: true, length: { maximum: 50 }
  validates :address_line1 , presence: true, length: { maximum: 150 }
  validates :address_line2 , length: { maximum: 150 }
  validates :city_village , presence: true, length: { maximum: 20 }
  validates :district , presence: true, length: { maximum: 20 }
  validates :phone, allow_blank: true, format: { with: /((\+*)((0[ -]+)*|(91 )*)(\d{12}+|\d{10}+))|\d{5}([- ]*)\d{6}|\d{2}([- ]*)\d{7}/ }, length: { maximum: 16 }
  validates :mobile, presence: true, format: { with: /(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}/ }, length: { maximum: 14 }
  validates :pin, presence: true, numericality: { only_integer: true }, :format => { :with => /[1-9]{1}[0-9]{5}/ }


  geocoded_by :full_street_address   # can also be an IP address
  after_validation :geocode


  private

  def full_street_address
    "#{address_line1}, #{address_line2 if self. address_line2}, #{city_village}, India, #{pin}"
  end
end
