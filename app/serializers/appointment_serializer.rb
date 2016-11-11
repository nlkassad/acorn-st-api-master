class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :user, :slot, :editable

  def editable
    scope == object.user
  end

  # def user # like belongs_to, but just give me the id
  #   object.user_id # => 1
  # end
  #
  # def slot # like belongs_to, but just give me the id
  #   object.slot_id # => 1
  # end
end
