class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_hash
      t.string :password_salt

      t.timestamps null: false
    end
    add_index :users, :username, unique: true
  end
end
