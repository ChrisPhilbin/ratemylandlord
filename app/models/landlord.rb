class Landlord < ApplicationRecord
	has_many :properties
	has_many :tenants, through: :properties

	def self.how_many_properties?
		inclues(:properties).where(properties: {landlord_id: params[:id]})
	end

	def self.overall_rating
		
	end
end
