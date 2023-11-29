class AddNameToNetwork < ActiveRecord::Migration[7.1]
  def change
    add_column :networks, :name, :string
  end
end
