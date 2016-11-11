class AddAvailableToSlots < ActiveRecord::Migration
  def change
    add_column :slots, :available, :boolean
  end
end
