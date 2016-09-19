class FixColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :drinks, :type, :fruit
  end
end
