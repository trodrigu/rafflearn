class CreateEntrants < ActiveRecord::Migration
  def change
    create_table :entrants do |t|
      t.integer :draw_id
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :status

      t.timestamps null: false
    end
  end
end
