class Category < ApplicationRecord
    
    #relationship
    has_many :sub_categories, dependent: :destroy
  
    #validates

    validates :name, presence: true
end
