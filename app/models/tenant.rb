class Tenant < ApplicationRecord
	has_many :landlords, through: :properties
	has_many :reviews

end
