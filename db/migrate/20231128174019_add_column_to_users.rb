class AddColumnToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :new_field, :string
    add_column :users, :location, :string
    add_column :users, :description, :string
    add_reference :users, :network, null: false, foreign_key: true
  end
end
