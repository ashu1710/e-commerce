class SubCategory < ApplicationRecord
 
  #relationship

  belongs_to :category

  #validtion 

  validates :name, presence: true

end
