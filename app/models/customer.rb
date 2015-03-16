class Customer < ActiveRecord::Base
  has_many :orders

  validates :name , presence: true, length: { maximum: 50 }
  validates :address_line1 , presence: true, length: { maximum: 150 }
  validates :address_line2 , presence: true, length: { maximum: 150 }

end
