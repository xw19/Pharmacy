class DoctorInfo < ActiveRecord::Base
  belongs_to :order

  # validates :name, length: { maximum:  30 }
  # validates :registration, length: { maximum: 30 }
end
