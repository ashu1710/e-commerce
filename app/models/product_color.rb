class ProductColor < ApplicationRecord

    #relationship
    
    has_many :product_size_color, dependent: :destroy

end
