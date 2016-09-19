class AddColumnDrinks < ActiveRecord::Migration[5.0]
  def change
    add_column :drinks, :description, :string
  end
end
