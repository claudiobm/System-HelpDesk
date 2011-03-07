class Technical < ActiveRecord::Base
  belongs_to :regions
  has_and_belongs_to_many :clients
  has_and_belongs_to_many :equipments, :join_table => "technicals_equipments"
end

#Technical sao os tecnicos que ficam na rua para atender os chamados
