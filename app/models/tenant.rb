class Tenant < ApplicationRecord
	has_many :properties
	has_many :landlords, through: :properties
	 
end
