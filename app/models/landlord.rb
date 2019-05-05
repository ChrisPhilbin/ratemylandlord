class Landlord < ApplicationRecord
	has_many :properties
	has_many :tenants, through: :properties
	has_many :reviews, through: :properties
	validates :firstname, :lastname, :presence => true

	def fullname
		"#{self.firstname} #{self.lastname}"
	end

	def self.number_of_properties
		inclues(:properties).where(properties: {landlord_id: params[:id]}).count
	end

	def self.overall_rating
		
	end

	def self.number_of_tenants

	end
end
