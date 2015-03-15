class MedicineOrder < ActiveRecord::Base
  belongs_to :order
  validates :medicine_name, presence: true, length: { maximum: 50 }
end
