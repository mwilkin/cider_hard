class Drink < ActiveRecord::Base
  validates :name, :presence => true
  validates :type, :presence => true
  validates :origin, :presence => true
  validates :cost, :presence => true
end
