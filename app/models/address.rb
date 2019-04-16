class Address < ApplicationRecord
  
  #relationship
  has_many :orders, dependent: :destroy

  belongs_to :user

  #validates
  validates :pincode, presence: true, numericality: { only_integer: true }, length: { is: 6 }
  validates :area, presence: true
  validates :city, presence: true
  validates :state, presence: true

end
