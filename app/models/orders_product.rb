class OrdersProduct < ActiveRecord::Base
  belongs_to :product
  belongs_to :order
end

#Orders product e a tabela de relacionamento entre as orders e produtos