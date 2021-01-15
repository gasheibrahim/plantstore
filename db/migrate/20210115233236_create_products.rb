class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :product_name
      t.text :product_image
      t.text :product_details
      t.string :sales_price
      t.string :regular_price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
