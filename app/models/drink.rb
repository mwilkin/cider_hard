class Drink < ActiveRecord::Base
  has_many :batches
  belongs_to :user
  
  validates :name, :presence => true
  validates :fruit, :presence => true
  validates :origin, :presence => true
  validates :cost, :presence => true
  validates :description, :presence => true
end
