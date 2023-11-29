class AddCategoryToIngredients < ActiveRecord::Migration[7.1]
  def change
    add_column :ingredients, :category, :string
  end
end
