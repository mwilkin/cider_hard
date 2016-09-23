class Batch < ActiveRecord::Base
  belongs_to :drink

  validates :batch_name, :presence => true
  validates :fruit_weight, :presence => true
  validates :fruit_type, :presence => true
  validates :barrel_type, :presence => true
  validates :temperature, :presence => true
  validates :alcohol_content, :presence => true
  validates :pH, :presence => true
  validates :fruit_cost, :presence => true

end
