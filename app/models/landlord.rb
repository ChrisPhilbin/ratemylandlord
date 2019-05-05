class Landlord < ApplicationRecord
	has_many :properties
	has_many :tenants, through: :properties
	has_many :reviews, through: :properties
	validates :firstname, :lastname, :email :presence => true
	validates :email, :uniqueness => true

	def fullname
		"#{self.firstname} #{self.lastname}"
	end

	def number_of_properties
		inclues(:properties).where(properties: {landlord_id: self.id}).count
	end

	def overall_rating
		
	end

	def number_of_tenants

	end

end
