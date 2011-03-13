class ClientAddress < ActiveRecord::Base
  belongs_to :client
  
  validates_presence_of :title, :address
end

#ClientAddress sao os enderecos dos clientes
