class CreateCartItems < ActiveRecord::Migration[7.1]
  def change
    create_table :cart_items do |t|
      t.references :cart, null: false, foreign_key: true
      t.references :ingredient, null: false, foreign_key: true
      t.string :quantity

      t.timestamps
    end
  end
end
