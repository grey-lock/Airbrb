class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :user_id, null: false
      t.integer :listing_id, null: false
      t.integer :rating, null: false
      t.text    :body, null: false
      
      t.index   :user_id
      t.index   :listing_id
      t.timestamps
    end
  end
end
