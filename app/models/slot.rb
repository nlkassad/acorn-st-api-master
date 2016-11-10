class Slot < ActiveRecord::Base
  belongs_to :appointment
  validates_associated :appoitment, absence: true
end
