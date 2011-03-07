# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

	def technical_belongs_to_client?(technical)
		@client.technicals.include?(technical)
	end
	
	def technical_belongs_to_equipment?(technical)
		@equipment.technicals.include?(technical)
	end
	
end
