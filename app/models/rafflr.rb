class Rafflr < ActiveRecord::Base
  validates :players, presence: true
  validates :number_of_winners, presence: true
end
