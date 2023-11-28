class CreateNetworks < ActiveRecord::Migration[7.1]
  def change
    create_table :networks do |t|
      t.string :location
      t.string :minimum_shipping_amount
      t.string :description

      t.timestamps
    end
  end
end
