class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :username,  null: false
      t.string :password_digest, null: false
      t.string :session_token, null: false
      t.string :firstname
      t.string :lastname
      t.string :img_url
      
      t.index  :username
      t.index  :email
      t.timestamps
    end
  end
end
