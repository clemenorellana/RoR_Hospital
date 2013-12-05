class Doctor < ActiveRecord::Base
  attr_accessible :address, :email, :name, :speciality
  has_many :phones
  has_many :appointments
  validates_presence_of :name
  validates_uniqueness_of :email
end
