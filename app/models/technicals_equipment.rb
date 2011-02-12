class TechnicalsEquipment < ActiveRecord::Base
  belongs_to :equipment
  belongs_to :technical
end

#E a tabela de relacionamento dos equipamentos entregues para os tecnicos