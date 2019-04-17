class Seller < ApplicationRecord
    
    #relationship

    # belongs_to :user
 
    #validation

    validates :seller_name, :address, presence: true
    validates :delivery_charge, presence: true, numericality: { only_integer: true }

end
