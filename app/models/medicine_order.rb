class MedicineOrder < ActiveRecord::Base
  validates :medicine_name, presence: true, length: { maximum: 50 }
end
