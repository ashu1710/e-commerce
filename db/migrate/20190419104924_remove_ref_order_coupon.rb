class RemoveRefOrderCoupon < ActiveRecord::Migration[5.2]
  def change
      remove_reference(:orders, :coupon, index: true)    
      remove_reference(:orders, :cart, index: true)    
  end
end
