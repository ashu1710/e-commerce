class Order < ApplicationRecord
  
  #relationships 

  belongs_to :user
  belongs_to :address
  # belongs_to :coupon
  belongs_to :product_size_color
  
  
end
