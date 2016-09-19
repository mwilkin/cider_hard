class Drink < ActiveRecord::Base
  validates :name, :presence => true
  validates :fruit, :presence => true
  validates :origin, :presence => true
  validates :cost, :presence => true
end
