class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :authentication_keys => [:login]

  has_many :orders
  has_one :customer

  validates :mobile, presence: true,uniqueness: true, format: { with: /(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}/ }, length: { maximum: 14 }
  validates :terms_and_conditions, acceptance: true

  accepts_nested_attributes_for :customer

  def login=(login)
    @login = login
  end

  def login
    @login || self.mobile || self.email
  end

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["lower(mobile) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    else
      if conditions[:mobile].nil?
        where(conditions).first
      else
        where(mobile: conditions[:mobile]).first
      end
    end
  end
end
