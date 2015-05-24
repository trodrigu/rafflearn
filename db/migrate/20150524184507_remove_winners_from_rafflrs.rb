class RemoveWinnersFromRafflrs < ActiveRecord::Migration
  def change
    remove_column :rafflrs, :winners, :integer
    add_column :rafflrs, :number_of_winners, :integer
  end
end
