class Tenant < ApplicationRecord
	has_many :reviews
	has_many :properties, through: :reviews

end
