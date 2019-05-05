class Property < ApplicationRecord
	belongs_to :landlord
	has_many :landlord_properties
	has_many :reviews
end
