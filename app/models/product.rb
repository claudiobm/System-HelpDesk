class Product < ActiveRecord::Base
  belongs_to :product_category
end

#Products sao os produtos, tintas comuns, tintas prontas e suprimentos