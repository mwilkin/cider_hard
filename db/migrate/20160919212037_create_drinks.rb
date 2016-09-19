class CreateDrinks < ActiveRecord::Migration[5.0]
  def change
    create_table :drinks do |t|
      t.string :name
      t.string :type
      t.string :origin
      t.integer :cost

      t.timestamps
    end
  end
end
