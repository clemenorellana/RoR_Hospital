class Phone < ActiveRecord::Base
  belongs_to :doctor
  attr_accessible :number, :phonetype, :doctor_id
  validates_presence_of :number, :phonetype
end
