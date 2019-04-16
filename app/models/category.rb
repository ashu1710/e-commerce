class Category < ApplicationRecord
    
    #relationship
    has_many :sub_categories, dependent: :destroy
    
end
