class Order < ActiveRecord::Base
  has_many :medicine_orders
  has_one :doctor_info
  belongs_to :user

  accepts_nested_attributes_for :medicine_orders, reject_if: lambda {|attributes| attributes['medicine_name'].blank?}
  accepts_nested_attributes_for :doctor_info, reject_if: lambda {|attributes| attributes['registration'].blank?}

  mount_uploader :prescription, PrescriptionUploader

  validates_presence_of :prescription
end
