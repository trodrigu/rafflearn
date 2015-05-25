class CreateRafflrs < ActiveRecord::Migration
  def change
    create_table :rafflrs do |t|
      t.integer :draw_id
      t.string :description
      t.datetime :drawn_at
      t.string :token

      t.timestamps null: false
    end
    add_index :rafflrs, :draw_id, unique: true
  end
end
