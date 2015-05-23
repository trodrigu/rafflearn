class Rafflr < ActiveRecord::Base
  validates :players, presence: true
  validates :winners, presence: true
end
