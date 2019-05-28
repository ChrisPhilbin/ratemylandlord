class Landlord < ApplicationRecord
	has_many :properties
	validates :firstname, :lastname, :email, :presence => true
	validates :email, :uniqueness => true

	def fullname
		"#{self.firstname} #{self.lastname}"
	end

	def number_of_properties
		self.properties.count
	end

	def overall_rating
		
	end

	def number_of_tenants
		self.tenants.count
	end

end
