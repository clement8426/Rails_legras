class RenameNewFieldInUsers < ActiveRecord::Migration[7.1]
  def change
    rename_column :users, :new_column_name, :name

  end
end
