class Equipment < ActiveRecord::Base
	has_and_belongs_to_many :technicals, :join_table => "technicals_equipments"
	
	validates_presence_of :name
end

#Equipment sao os equipamentos emprestados para o tecnicos
