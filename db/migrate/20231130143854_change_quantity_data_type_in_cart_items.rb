class ChangeQuantityDataTypeInCartItems < ActiveRecord::Migration[7.1]
  def change
    change_column :cart_items, :quantity, :integer, using: 'quantity::integer'
  end
end
