class ChangePriceDataTypeInIngredients < ActiveRecord::Migration[7.1]
  def change
    change_column :ingredients, :price, :integer, using: 'price::integer'
  end
end
