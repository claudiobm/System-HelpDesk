class OrderType < ActiveRecord::Base
	validates_presence_of :name
	validates_uniqueness_of :name, :case_sensitive => true
end

# OrderType e o tipo da OS que pode ser tinta pronta, tinta comum, suprimentos
