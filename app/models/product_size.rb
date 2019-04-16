class ProductSize < ApplicationRecord

    #relationship
    has_many :product_size_colors, dependent: :destroy
    
end
