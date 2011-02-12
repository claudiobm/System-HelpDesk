class Client < ActiveRecord::Base
  belongs_to :children
end

#Client sao os clientes que sao as oficinas, clientes final, empresas e etc..