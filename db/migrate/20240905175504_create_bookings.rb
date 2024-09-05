class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :vessel_id
      t.integer :port_start_id
      t.integer :port_end_id
      t.string :start_date
      t.string :end_date

      t.timestamps
    end
  end
end
