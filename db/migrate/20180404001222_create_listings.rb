class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.integer :host_id, null: false
      t.integer :booking_id
      t.string  :title, null: false
      t.text    :description, null: false
      t.text    :address, null: false
      t.float   :lat, null: false
      t.float   :long, null: false
      t.integer :price, null: false
      t.string  :prop_type, null: false
      t.string  :room_type, null: false
      t.integer :num_guests, null: false
      t.integer :bedrooms, null: false
      t.integer :beds, null: false
      t.text    :rules, null: false
      t.string  :img_url, null: false
      
      t.boolean :wifi, default: false
      t.boolean :kitchen, default: false
      t.boolean :ac, default: false
      t.boolean :tv, default: false
      
      t.index   :host_id
      
      t.timestamps
    end
  end
end
