class TechnicalsEquipment < ActiveRecord::Base
  belongs_to :equipment
  belongs_to :technical
  
  validates_presence_of :equipment_id, :technical_id
  validates_uniqueness_of :equipment_id, :scope => :technical_id
end

#E a tabela de relacionamento dos equipamentos entregues para os tecnicos
