class Product < ActiveRecord::Base
  belongs_to :product_category
  
  validates_presence_of :name
  validates_uniqueness_of :cod, :allow_blank => true, :allow_nil => true
end

#Products sao os produtos, tintas comuns, tintas prontas e suprimentos
