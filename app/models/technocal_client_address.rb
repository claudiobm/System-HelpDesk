class TechnocalClientAddress < ActiveRecord::Base
  belongs_to :technical
  belongs_to :client_address
  
  validates_presence_of :technical_id, :client_address_id
  validates_uniqueness_of :client_address_id, :scope => :technical_id
end

# Tabela de relacionamento dos tecnicos que atendem determinados clientes
