class AppointmentSerializer < ActiveModel::Serializer
  # embed :ids, include: true

  attributes :id, :user_id, :slot_id
  has_one :user
  has_one :slot
end
