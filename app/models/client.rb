class Client < ActiveRecord::Base
  belongs_to :children, :class_name => "Client"
  has_many :addresses, :class_name => "ClientAddress"
  
  def address_attribute=(address_attribute)
  	addresses.build(address_attribute)
  end

end

#Client sao os clientes que sao as oficinas, clientes final, empresas e etc..
