class Product < ApplicationRecord
    ratyrate_rateable "quality"
    belongs_to :category 
    has_and_belongs_to_many :users  
end
