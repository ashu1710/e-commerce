class Coupon < ApplicationRecord

    #relation_ship
    has_many :orders, dependent: :destroy

    #validation
    validates :
    
end
