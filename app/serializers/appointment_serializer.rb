class AppointmentSerializer < ActiveModel::Serializer
  # attributes :id, :user_id, :slot_id, :editable
  attributes :id, :user, :slot_id, :editable

  # belongs_to :user
  # has_one :slot

  def editable
    scope == object.user
  end

  def user
    object.user_id
  end

  def slot_id
    object.slot_id
  end
end
