class AddUserIdToDrinks < ActiveRecord::Migration[5.0]
  def change
    add_column :drinks, :user_id, :integer
    add_index :drinks, :user_id
  end
end
