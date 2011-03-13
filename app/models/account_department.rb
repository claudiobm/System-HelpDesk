class AccountDepartment < ActiveRecord::Base
	validates_presence_of :name
	validates_uniqueness_of :name, :case_sensitive => true
end

# AccountDepartment sao os departamentos dos usuarios do sitemas podendo ser eles coordenador, usuarios e administradores
