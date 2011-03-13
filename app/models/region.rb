class Region < ActiveRecord::Base
	has_many :technicals
	
	validates_presence_of :name
	validates_uniqueness_of :name
end
