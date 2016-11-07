class AppointmentSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :slot
end
