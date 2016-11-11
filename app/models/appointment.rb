class Appointment < ActiveRecord::Base
  belongs_to :user, inverse_of: :appointments
  has_one :slot
end
