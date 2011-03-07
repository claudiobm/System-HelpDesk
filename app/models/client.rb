class Client < ActiveRecord::Base
  belongs_to :children, :class_name => "Client"
  has_many :addresses, :class_name => "ClientAddress"
  has_and_belongs_to_many :technicals
  
  def address_attribute=(address_attribute)
  	addresses.build(address_attribute)
  end
  
  def technicals_ids=(ids)
  	list_technicals = self.technicals.map {|t| t.id}
  	exclude_tecnicals = technicals - ids
    include_tecnicals = ids - technicals
    
    self.technicals - Technical.find(exclude_tecnicals)
	self.technicals = Technical.find(include_tecnicals)
  end

end

#Client sao os clientes que sao as oficinas, clientes final, empresas e etc..
