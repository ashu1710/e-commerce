class Order < ApplicationRecord
  
  #relationships 

  belongs_to :user
  belongs_to :cart
  belongs_to :address
  belongs_to :coupon

  #validates
  
  validates :min_amt, presence: true, numericality: { only_integer: true }
  validates :amt_discount, presence: true, numericality: { only_integer: true }

end
