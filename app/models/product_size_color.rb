class ProductSizeColor < ApplicationRecord
  
  #relationship

  has_many :carts, dependent: :destroy
  has_many :orders, dependent: :destroy  

  belongs_to :product
  belongs_to :product_color
  belongs_to :product_size

end
