class User < ApplicationRecord
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #relationship 

  has_one :sellers, dependent: :destroy
  has_many :products, dependent: :destroy
  has_one :cart, dependent: :destroy
  has_many :addresses, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_many :advertisements, dependent: :destroy

  #validation

  validates :phone, presence: true, uniqueness: true, length: { is: 10 }, numericality: { only_integer: true }
  validates :email, presence: true, uniqueness: true

end
