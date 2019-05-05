class LandlordProperty < ApplicationRecord
	belongs_to :landlord
	belongs_to :property
end
