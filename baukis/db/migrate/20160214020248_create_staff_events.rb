class CreateStaffEvents < ActiveRecord::Migration
  def change
    create_table :staff_events do |t|

      t.timestamps null: false
    end
  end
end
