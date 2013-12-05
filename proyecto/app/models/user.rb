class User < ActiveRecord::Base
	has_secure_password
  attr_accessible :email, :password, :password_confirmation, :username, :name, :level

  validates_uniqueness_of :email, :username
  validates_presence_of :name, :email, :username, :password
end
