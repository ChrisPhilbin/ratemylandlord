class Property < ApplicationRecord
	has_many :landlord_properties
	has_many :reviews
end
