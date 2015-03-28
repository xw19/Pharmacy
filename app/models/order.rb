class Order < ActiveRecord::Base
  has_many :medicine_orders
  belongs_to :user

  accepts_nested_attributes_for :medicine_orders, reject_if: lambda {|attributes| attributes['medicine_name'].blank?}

  mount_uploader :prescription, PrescriptionUploader

  validates_presence_of :prescription
end
