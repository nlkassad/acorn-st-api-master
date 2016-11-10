class Appointment < ActiveRecord::Base
  belongs_to :user
  has_one :slot, inverse_of: :slot

  validates :user, presence: true
  validates :slot, presence: true
end
