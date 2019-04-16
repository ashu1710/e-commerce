class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.integer :qty
      t.integer :tot_amt
      t.references :user, foreign_key: true
      t.references :product_size_color, foreign_key: true

      t.timestamps
    end
  end
end
