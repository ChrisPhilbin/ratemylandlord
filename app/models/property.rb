class Property < ApplicationRecord
	has_many :landlord_properties
	has_many :reviews
	validates :zip, numericality: true
	validates :zip, length: { is: 5 }
end
