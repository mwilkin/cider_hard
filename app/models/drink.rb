class Drink < ActiveRecord::Base
  has_many :batches
  
  validates :name, :presence => true
  validates :fruit, :presence => true
  validates :origin, :presence => true
  validates :cost, :presence => true
  validates :description, :presence => true
end
