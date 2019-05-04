class Landlord < ApplicationRecord
	has_many :properties
	has_many :tenants, through: :properties
	has_many :reviews, through: :tenants

	def self.how_many_properties?
		inclues(:properties).where(properties: {landlord_id: params[:id]})
	end

	def self.overall_rating
		
	end
end
