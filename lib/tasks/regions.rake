namespace :create do
	desc "create regions"
	task :regions => :environment do
		Region.create([
			{
				:name => "Norte",
				:description => "Região Norte"
			},
			{
				:name => "Sul",
				:description => "Região Sul"
			},
			{
				:name => "Centro Oeste",
				:description => "Região Centro Oeste"
			},
			{
				:name => "Suldeste",
				:description => "Região Suldeste"
			},
			{
				:name => "Nordeste",
				:description => "Região Leste"
			},
		])	
	end
end
