class AddDrinkIdToBatches < ActiveRecord::Migration[5.0]
  def change
    add_column :batches, :drink_id, :integer
  end
end
