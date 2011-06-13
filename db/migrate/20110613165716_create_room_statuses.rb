class CreateRoomStatuses < ActiveRecord::Migration
  def self.up
    create_table :room_statuses do |t|
      t.integer :roomnum
      t.string :roomname
      t.string :roomstatus

      t.timestamps
    end
  end

  def self.down
    drop_table :room_statuses
  end
end
