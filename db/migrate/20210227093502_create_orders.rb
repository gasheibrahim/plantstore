class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :province
      t.string :district
      t.string :phonenumber
      t.string :pay_method
      t.string :accept
      t.references :user, foreign_key: true
      t.references :cart, foreign_key: true

      t.timestamps
    end
  end
end
