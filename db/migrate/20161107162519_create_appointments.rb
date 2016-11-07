class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.references :user, index: true, foreign_key: true
      t.references :slot, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
