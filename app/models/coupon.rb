class Coupon < ApplicationRecord

    #relation_ship
    # has_many :orders, dependent: :destroy

    
    #validation

    validates :min_amt, presence: true, numericality: { only_integer: true }
    validates :amt_discount, presence: true, numericality: { only_integer: true }

    
end
