class RemoveNewFieldFromUsers < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :new_field, :string
  end
end
