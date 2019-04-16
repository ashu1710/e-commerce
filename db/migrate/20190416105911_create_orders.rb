class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.date :order_received_date
      t.references :user, foreign_key: true
      t.references :cart, foreign_key: true
      t.references :address, foreign_key: true
      t.references :coupon, foreign_key: true

      t.timestamps
    end
  end
end
