class Appointment < ActiveRecord::Base
  belongs_to :user
  has_one :slot

  validates :user, presence: true
end
