class CreateBatches < ActiveRecord::Migration[5.0]
  def change
    create_table :batches do |t|
      t.string :batch_name
      t.integer :fruit_weight
      t.string :fruit_type
      t.string :barrel_type
      t.float :temperature
      t.float :alcohol_content
      t.float :pH
      t.float :fruit_cost
      t.timestamps
    end
  end
end
