class CreateSlots < ActiveRecord::Migration
  def change
    create_table :slots do |t|
      t.datetime :time_block

      t.timestamps null: false
    end
  end
end
