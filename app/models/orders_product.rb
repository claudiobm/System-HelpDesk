class OrdersProduct < ActiveRecord::Base
  belongs_to :product
  belongs_to :order
  
  validates_presence_of :product_id, :order_id
  validates_uniqueness_of :order_id, :scope => :product_id
end

#Orders product e a tabela de relacionamento entre as orders e produtos
