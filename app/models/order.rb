class Order < ActiveRecord::Base
  belongs_to :order_type
  belongs_to :order_category
  belongs_to :client
  belongs_to :account
  belongs_to :technical
  
  STATUS = ["Aberto", "Em andamento", "Feedback", "Rejeitado", "Fechado"]
end
# Order e a ordem de servico
