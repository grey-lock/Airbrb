class AddLikePropToListings < ActiveRecord::Migration[5.1]
  def change
    add_column :listings, :likes, :integer, default: 0
  end
end
