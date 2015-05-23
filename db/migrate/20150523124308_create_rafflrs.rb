class CreateRafflrs < ActiveRecord::Migration
  def change
    create_table :rafflrs do |t|
      t.string :players
      t.integer :winners

      t.timestamps null: false
    end
  end
end
