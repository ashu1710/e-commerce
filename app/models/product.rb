class Product < ApplicationRecord
  
  #relationship
  belongs_to :user
  belongs_to :sub_category

  has_many :product_size_colors, dependent: :destroy

  has_one_attached :images

  #validates
  validates :name, presence: true
  validates :price, presence: true, numericality: true


end
