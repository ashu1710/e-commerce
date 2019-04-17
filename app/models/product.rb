class Product < ApplicationRecord
  
  #relationship
  belongs_to :user
  belongs_to :sub_category

  has_many :product_size_colors, dependent: :destroy


  #validates
  validates :name, presence: true, numericality: true
  validates :price, presence: true

end
