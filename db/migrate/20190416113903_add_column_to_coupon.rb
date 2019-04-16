class AddColumnToCoupon < ActiveRecord::Migration[5.2]
  def change
    add_column :coupons, :amt_discount, :integer
  end
end
