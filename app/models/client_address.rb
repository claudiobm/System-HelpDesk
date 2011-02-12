class ClientAddress < ActiveRecord::Base
  belongs_to :client
end

#ClientAddress sao os enderecos dos clientes