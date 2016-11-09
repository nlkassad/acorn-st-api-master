class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :slot_id, :editable
  belongs_to :user
  has_one :slot

  def editable
    scope == object.user
  end
end
