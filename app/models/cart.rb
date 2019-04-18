class Cart < ApplicationRecord
  
  #relationship

  belongs_to :user
  belongs_to :product_size_color

  has_one :order,dependent: :destroy

  #validates

  # validates :qty, presense: true, numericality: { only_integer: true } 
  # validates :tot_amt, presense: true, numericality: true 


end
