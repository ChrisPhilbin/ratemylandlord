class Tenant < ApplicationRecord
	has_many :landlords, through: :properties
	has_many :reviews

	def new
		@tenant = Tenant.new
	end
end
