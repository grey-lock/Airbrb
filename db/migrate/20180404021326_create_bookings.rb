class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.integer   :user_id, null: false
      t.integer   :listing_id, null: false
      t.datetime  :check_in, null: false
      t.datetime  :check_out, null: false
      
      t.index :user_id
      t.index :listing_id
      t.timestamps
    end
  end
end
