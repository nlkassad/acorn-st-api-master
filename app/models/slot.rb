class Slot < ActiveRecord::Base
  belongs_to :appointment
  validates_associated :appointment, absence: true
end
