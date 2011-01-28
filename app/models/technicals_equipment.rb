class TechnicalsEquipment < ActiveRecord::Base
  belongs_to :equipment
  belongs_to :technical
end
