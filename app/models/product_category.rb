class ProductCategory < ActiveRecord::Base
	validates_presence_of :name
	validates_uniqueness_of :name
end

#ProductCategory a categoria dos produtos podem ser Tinta pronta, tinta para fazer e suprimentos
