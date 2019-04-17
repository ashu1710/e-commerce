class DashboardController < ApplicationController
    
    def index 
        @customer_count = User.where(user_role: 'Customer').count
        @seller_count = User.where(user_role: 'Seller').count
        @product_count = Product.count
        @order_count = Order.count
        @advt = Advertisement.count
        @coupon = Coupon.count
    end
end
