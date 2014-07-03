class CreateAttendees < ActiveRecord::Migration
  def change
    create_table :attendees do |t|
      t.string :name
      t.string :attendance
      t.string :comment

      t.timestamps
    end
  end
end
