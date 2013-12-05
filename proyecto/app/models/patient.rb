class Patient < ActiveRecord::Base
  attr_accessible :birthday, :email, :leyend, :name, :phone, :live
  validates_presence_of :name
  validates_uniqueness_of :phone
  validates_uniqueness_of :email
  has_many :appointments
end
