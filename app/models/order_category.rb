class OrderCategory < ActiveRecord::Base
	validates_presence_of :name
	validates_uniqueness_of :name, :case_sensitive => true
end

# OrderCategory as categorias da OS que podem ser problema de tonalidade, tinta pronta com problema
