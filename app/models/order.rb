class Order < ActiveRecord::Base
	belongs_to :order_type
	belongs_to :order_category
	has_many :orders_products
	belongs_to :client
	belongs_to :account
	belongs_to :technical
	has_and_belongs_to_many :products
	
	validates_presence_of :order_category, :client_id, :account_id
  
	STATUS = ["Aberto", "Em andamento", "Feedback", "Rejeitado", "Fechado"]
	
	def products_attributes=(products_attributes)
		products_attributes.each do |product_attribute|
			orders_products.build(product_attribute)
		end
	end
	
end
# Order e a ordem de servico
